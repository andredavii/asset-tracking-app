# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
Category.create({
  :name => "Smart Phone"
})


Category.create({
  :name => "Laptop"
})

Category.create({
  :name => "Desktop"
})

Manufacturer.create({
  :name => "Apple",
  :website => "https://www.apple.com"
})


Manufacturer.create({
  :name => "Lenovo",
  :website => "https://www.lenovo.com"
})

Manufacturer.create({
  :name => "Dell",
  :website => "https://www.dell.com"
})

employee_hashes = [
  {
    :first_name => "Employee", 
    :last_name => "1"
  },
  {
    :first_name => "Employee",
    :last_name => "2"
  },
  {
    :first_name => "Employee",
    :last_name => "3"
  },
  {
    :first_name => "Employee",
    :last_name => "4"
  },

  {
    :first_name => "Employee",
    :last_name => "5"
  }
]

Employee.create(employee_hashes)


3.times do |index|
  Device.create(
    :name => "Device #{index + rand(1..100)}",
    :manufacturer => Manufacturer.first,
    :category => Category.first,
  )
end


3.times do |index|
  Device.create(
    :name => "Device #{index + rand(1..100)}",
    :manufacturer => Manufacturer.second,
    :category => Category.first,
  )
end

3.times do |index|
  Device.create(
    :name => "Device #{index + rand(1..100)}",
    :manufacturer => Manufacturer.third,
    :category => Category.first,
  )
end

3.times do |index|
  Device.create(
    :name => "Device #{index + rand(1..100)}",
    :manufacturer => Manufacturer.first,
    :category => Category.second,
  )
end


3.times do |index|
  Device.create(
    :name => "Device #{index + rand(1..100)}",
    :manufacturer => Manufacturer.second,
    :category => Category.second,
  )
end

3.times do |index|
  Device.create(
    :name => "Device #{index + rand(1..100)}",
    :manufacturer => Manufacturer.third,
    :category => Category.second,
  )
end

3.times do |index|
  Device.create(
    :name => "Device #{index + rand(1..100)}",
    :manufacturer => Manufacturer.first,
    :category => Category.third,
  )
end


3.times do |index|
  Device.create(
    :name => "Device #{index + rand(1..100)}",
    :manufacturer => Manufacturer.second,
    :category => Category.third,
  )
end

3.times do |index|
  Device.create(
    :name => "Device #{index + rand(1..100)}",
    :manufacturer => Manufacturer.third,
    :category => Category.third,
  )
end

5.times do |index|
  Software.create(
    :name => "Software #{index + 1}",
    :license_count => rand(1..5)
  )
end

3.times do
  Employee.all.each do |employee|
    employee.softwares << Software.find(rand(1..5))
  end
end

#Assign 3 unassigned devices to each employee
3.times do
  Employee.all.each do |employee|
    device = Device.where(:employee_id => nil).sample
    device.update(:employee_id => employee.id)
  end
end

