# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants = [
  { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+44 20 1234 5678", category: "chinese" },
  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+44 20 1234 5679", category: "italian" },
  { name: "Sushi Palace", address: "123 Main St, New York, NY 10001", phone_number: "+1 212-123-4567", category: "japanese" },
  { name: "La Petite France", address: "789 Rue de la République, Paris", phone_number: "+33 1 23 45 67 89", category: "french" },
  { name: "Belgian Bistro", address: "456 Grand Place, Brussels", phone_number: "+32 2 34 56 78", category: "belgian" }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"

