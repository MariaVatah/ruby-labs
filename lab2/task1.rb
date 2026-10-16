puts "Завдання 6. Спосіб 1 — while"

arr = [4, 3, 6, 7, 8, 5]

first = arr[0]
last = arr[arr.length - 1]

i = 1

while i < arr.length - 1
  if arr[i] % 2 == 0
    arr[i] = arr[i] + first
  else
    arr[i] = arr[i] + last
  end

  i += 1
end

puts arr.inspect

puts "Завдання 6. Спосіб 2 — each_with_index"

arr = [4, 3, 6, 7, 8, 5]

first = arr[0]
last = arr[arr.length - 1]

arr.each_with_index do |value, i|
  if i != 0 && i != arr.length - 1
    if value % 2 == 0
      arr[i] = value + first
    else
      arr[i] = value + last
    end
  end
end

puts arr.inspect

puts "Завдання 7. Спосіб 1 — while"

arr = [4, -3, 6, 7, -8, 5]

min = arr[0]
i = 1

while i < arr.length
  if arr[i] < min
    min = arr[i]
  end

  i += 1
end

i = 0

while i < arr.length
  if arr[i] > 0
    arr[i] = min
  end

  i += 1
end

puts arr.inspect

puts "Завдання 7. Спосіб 2 — each"

arr = [4, -3, 6, 7, -8, 5]

min = arr[0]

arr.each do |value|
  if value < min
    min = value
  end
end

arr.each_with_index do |value, i|
  if value > 0
    arr[i] = min
  end
end

puts arr.inspect