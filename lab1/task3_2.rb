numbers = [1, 2, 3, 4, 5]
reversed_numbers = []

until numbers.empty?
  reversed_numbers.unshift(numbers.pop)
end

puts "Методи pop та push:"
puts "Розвернутий масив: #{reversed_numbers}"