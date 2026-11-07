def test1
  yield
end

def test2
  a = 5
  yield a
end

puts "Yield без аргументів:"
test1 do
  puts "Hello!"
end

puts "----------------"

puts "Yield з аргументом:"
test2 do |x|
  puts "Отримане число: #{x}"
  puts "Результат додавання: #{x + 2}"
end