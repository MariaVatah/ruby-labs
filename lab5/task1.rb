module Measurements
  def show_measurements
    puts "Площа: #{area}"
    puts "Периметр: #{perimeter}"
  end
end

class Figure
  include Measurements

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def description
    puts "Геометрична фігура: #{@name}"
    internal_description
  end

  def self.kind
    "Геометрична фігура"
  end

  protected

  def internal_description
    puts "Це фігура з певними геометричними параметрами."
  end
end

class Circle < Figure
  attr_accessor :radius

  def initialize(radius)
    super("Коло")
    @radius = radius
  end

  def area
    3.14 * @radius * @radius
  end

  def perimeter
    2 * 3.14 * @radius
  end

  def description
    super
    puts "Радіус: #{@radius}"
  end

  def self.kind
    super + " — коло"
  end
end

class Square < Figure
  attr_accessor :side

  def initialize(side)
    super("Квадрат")
    @side = side
  end

  def area
    @side * @side
  end

  def perimeter
    4 * @side
  end

  def description
    super
    puts "Сторона: #{@side}"
  end
end

class Triangle < Figure
  attr_accessor :a, :b, :c, :height

  def initialize(a, b, c, height)
    super("Трикутник")
    @a = a
    @b = b
    @c = c
    @height = height
  end

  def area
    @a * @height / 2.0
  end

  def perimeter
    @a + @b + @c
  end

  def description
    super
    puts "Сторони: #{@a}, #{@b}, #{@c}"
    puts "Висота: #{@height}"
  end
end

circle = Circle.new(5)
square = Square.new(4)
triangle = Triangle.new(3, 4, 5, 4)

puts "Початковий радіус: #{circle.radius}"
circle.radius = 6
puts "Новий радіус: #{circle.radius}"

puts

puts "===== КОЛО ====="
circle.description
circle.show_measurements

puts

puts "===== КВАДРАТ ====="
square.description
square.show_measurements

puts

puts "===== ТРИКУТНИК ====="
triangle.description
triangle.show_measurements

puts

puts "Тип класу: #{Circle.kind}"

def circle.special_description
  puts "Це особливий об'єкт класу Circle."
end

circle.special_description
