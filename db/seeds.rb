# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# businessType = Type.create(name: 'Barber', description: 'Barber')
#
# Type.create(name: 'Hair Stylist', description: 'Hair Stylist')

puts "Creating Business Types"
businessType = Type.create!(name: 'Barber', description: 'Barber')

puts "Creating Business"

business = Business.create!(name: 'Acktar Coiffure', description: 'By Acktar', active: true, address1: 'Port Louis', type_id: businessType)


puts "Creating Days"
Day.create([
  { name: 'Monday' },
  { name: 'Tuesday' },
  { name: 'Wednesday' },
  { name: 'Thursday' },
  { name: 'Friday' },
  { name: 'Saturday' },
  { name: 'Sunday' },
  { name: 'Holiday' },
])

puts "Creating Service"
Service.create!([
  { name: 'Haircut', description: 'Fresh & Trendy Haircut', price: 125, business_id: business },
  { name: 'Beard Trim', description: 'Beard Trimming', price: 100, business_id: business },
  { name: 'Shampoing', description: 'Chill Shampoing', price: 150, business_id: business }
])

puts "Creating Image Type"
ImageType.create!([
  { name: 'Profile' },
  { name: 'Background' },
  { name: 'Portfolio' }
])
