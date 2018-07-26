require 'faker'

5.times do
  city = City.create(city_name: Faker::Pokemon.location)
end

10.times do
  dogsitter = Dogsitter.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    city_id: rand((City.first.id)..(City.last.id))
  )
end

15.times do
  dog = Dog.create(
    name: Faker::Pokemon.name,
    city_id: rand((City.first.id)..(City.last.id))
  )
end

50.times do
    stroll = Stroll.create(
      date: Faker::Date.forward(365).to_datetime,
      dogsitter_id: rand((Dogsitter.first.id)..(Dogsitter.last.id)),
      dog_id: rand((Dog.first.id)..(Dog.last.id))
    )
end
