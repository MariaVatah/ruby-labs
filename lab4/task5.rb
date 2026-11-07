def sum(*members)
  initial = 0

  members.each do |item|
    initial += item
  end

  initial
end

puts "Сума двох чисел:"
puts sum(10, 2)

puts "Сума чотирьох чисел:"
puts sum(10, 2, 12, 34)

array_to_sum = [10, 2, 12, 34]

puts "Сума елементів масиву:"
puts sum(*array_to_sum)
