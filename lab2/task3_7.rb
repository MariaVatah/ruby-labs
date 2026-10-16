require 'digest'

directory = ARGV[0] || "test_files"
files_by_hash = {}

Dir.glob("#{directory}/**/*").each do |path|
  if File.file?(path)
    hash = Digest::SHA256.file(path).hexdigest

    if files_by_hash[hash]
      files_by_hash[hash] << path
    else
      files_by_hash[hash] = [path]
    end
  end
end

found = false

files_by_hash.each do |hash, paths|
  if paths.length > 1
    found = true

    puts "Знайдено однакові файли:"
    paths.each do |path|
      puts path
    end

    puts "SHA256: #{hash}"
    puts
  end
end

if !found
  puts "Однакових файлів не знайдено."
end