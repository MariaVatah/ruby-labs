def greet
  puts "Hello, baby!"
end

alias baby greet

puts "Виклик методу greet:"
greet

puts "Виклик псевдоніма baby:"
baby