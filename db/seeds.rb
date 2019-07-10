TYPE = %w(chinese italian japanese french belgian)

puts "Cleaning current Database"
Review.destroy_all
Restaurant.destroy_all

puts "Start seeding process!"

10.times do
  values = {
    name: Faker::Name.name_with_middle,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: TYPE.sample
  }

  restaurant = Restaurant.create(values)

  rand(4..8).times do
    r = Review.new(content: Faker::ChuckNorris.fact, rating: rand(0..5))
    r.restaurant = restaurant
    r.save
    # @review.restaurant = @restaurant
  end
end

puts "Finished!"
