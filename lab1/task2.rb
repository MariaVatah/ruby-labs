numbers = [-5, 8, -2, 0, 12, -9, 4, -1]

positive, negative_and_zero = numbers.partition { |number| number > 0 }

negative = negative_and_zero.select { |number| number < 0 }

puts "Початковий масив: #{numbers}"
puts "Додатні числа: #{positive}"
puts "Від'ємні числа: #{negative}"