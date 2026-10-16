def safe_write(filepath, content)
  temp_path = filepath + ".tmp"

  begin
    File.open(temp_path, "w") do |file|
      file.write(content)
    end

    File.rename(temp_path, filepath)
  rescue
    if File.exist?(temp_path)
      File.delete(temp_path)
    end

    raise
  end
end

safe_write("report.txt", "Звіт лабораторної роботи № 2\n")

puts "Файл успішно записано."