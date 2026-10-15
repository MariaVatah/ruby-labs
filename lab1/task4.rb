cars = [
{ brand: "BMW", year: 2018, mileage: 120000 },
{ brand: "Audi", year: 2014, mileage: 90000 },
{ brand: "Toyota", year: 2020, mileage: 80000 },
{ brand: "Mercedes", year: 2016, mileage: 160000 },
{ brand: "Honda", year: 2017, mileage: 110000 },
{ brand: "Ford", year: 2019, mileage: 140000 }
]

filtered_cars = cars.select do |car|
car[] > 2015 && car[] < 150000
end

sorted_cars = filtered_cars.sort_by { |car| car[] }

puts "Автомобілі, що відповідають умовам:"

sorted_cars.each do |car|
puts "Марка: #{car[]}, рік: #{car[]}, пробіг: #{car[]} км"
end