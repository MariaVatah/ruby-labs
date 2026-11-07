def greet(name:, age: nil, city: "Unknown")
  puts "Hello, #{name}!"

  if age != nil
    puts "Age: #{age}"
  end

  puts "City: #{city}"
end

greet(name: "Maria", age: 20, city: "Lviv")

puts "----------------"

greet(name: "Anna", city: "Kyiv")

puts "----------------"

greet(name: "Ivan")
