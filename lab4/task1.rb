def sum(a, b)
  a + b
end

puts "Перше визначення методу:"
puts sum(10, 2)

def sum(a, b = 5)
  a + b
end

puts "Перевизначений метод:"
puts sum(10, 2)
puts sum(10)
