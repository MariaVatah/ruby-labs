test1 = Proc.new do
  puts "Hello from Proc!"
end

puts "Proc без аргументів:"
test1.call

puts "----------------"

test2 = Proc.new do |a, b, c|
  puts "a = #{a}, b = #{b}, c = #{c}"
end

puts "Proc з різною кількістю аргументів:"
test2.call(1, 2)
test2.call(1, 2, 3, 4, 5)

puts "----------------"

test3 = lambda do
  puts "Hello from Lambda!"
end

puts "Lambda без аргументів:"
test3.call

puts "----------------"

test4 = lambda do |a, b|
  puts "Результат множення: #{a * b}"
end

puts "Lambda з аргументами:"
test4.call(2, 3)

def proc_return
  Proc.new { return "Proc.new" }.call
  return "proc_return method finished"
end

def lambda_return
  lambda { return "lambda" }.call
  return "lambda_return method finished"
end

puts "----------------"
puts "Особливості return:"
puts proc_return
puts lambda_return