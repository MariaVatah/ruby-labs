puts "Завдання 6. Спосіб 1 — while"

arr = [
  [1, 3, 5, 8],
  [4, 2, 6, 9],
  [2, 4, 6, 8],
  [7, 3, 5, 1]
]

i = 0

while i < arr.length
  j = 0
  sorted = true

  while j < arr[i].length - 1
    if arr[i][j] >= arr[i][j + 1]
      sorted = false
    end
    j += 1
  end

  if sorted
    puts "Рядок #{i + 1}"
  end

  i += 1
end

puts "Завдання 6. Спосіб 2 — each_with_index"

arr = [
  [1, 3, 5, 8],
  [4, 2, 6, 9],
  [2, 4, 6, 8],
  [7, 3, 5, 1]
]

arr.each_with_index do |row, i|
  sorted = true
  j = 0

  while j < row.length - 1
    if row[j] >= row[j + 1]
      sorted = false
    end
    j += 1
  end

  if sorted
    puts "Рядок #{i + 1}"
  end
end

puts "Завдання 7. Спосіб 1 — while"

arr = [
  [2, 5, 1],
  [4, 3, 8],
  [6, 7, 2]
]

product = 1
j = 0

while j < arr[0].length
  max = arr[0][j]
  i = 1

  while i < arr.length
    if arr[i][j] > max
      max = arr[i][j]
    end
    i += 1
  end

  puts "Максимум стовпця #{j + 1}: #{max}"
  product = product * max
  j += 1
end

puts "Добуток максимумів: #{product}"

puts "Завдання 7. Спосіб 2 — each"

arr = [
  [2, 5, 1],
  [4, 3, 8],
  [6, 7, 2]
]

product = 1
column = 0

while column < arr[0].length
  max = arr[0][column]

  arr.each do |row|
    if row[column] > max
      max = row[column]
    end
  end

  puts "Максимум стовпця #{column + 1}: #{max}"
  product = product * max
  column += 1
end

puts "Добуток максимумів: #{product}"