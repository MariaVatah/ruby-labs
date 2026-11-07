def show_number
  yield 5
end

show_number do |number|
  puts "Отримане число: #{number}"
  puts "Подвоєне число: #{number * 2}"
end