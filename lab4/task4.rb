class Broom
  def +(another)
    12 + another
  end
end

whisk = Broom.new

puts "Метод-оператор:"
puts whisk + 10

class Bottle
  def capacity
    @capacity
  end

  def capacity=(new_cap)
    @capacity = new_cap
  end
end

btl = Bottle.new
btl.capacity = 10

puts "Метод присвоювання:"
puts btl.capacity
