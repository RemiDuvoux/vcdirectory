# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hardware_club = VcFirm.create!(name: "Hardware Club", creation_date: "2014", vc_type:"perf", city:"Paris", office_address: "59 Rue Beaubourg", description: "First community fund for hardware startups", website: "www.harwareclub.co", sector: "hardware")
lima = Startup.new(name: "Lima", alive:"true", description: "Lima creates the first personal cloud")
round = Round.new(date: "2012", ammount: 50000)
round.startup = lima
round.vc_firm = hardware_club
lima.save!
round.save!

10.times do
  new_vc_firm = VcFirm.create!(name: Faker::Company.name, creation_date: Faker::Date.backward(3600), vc_type: ["perf","tax","FNA","corporate","public"].sample, city: Faker::Address.city, office_address: Faker::Address.street_address, description: Faker::Lorem.sentence, funds_under_custody: Faker::Number.number(10), website: Faker::Internet.url, sector: "tech")
  2.times do
    new_startup = Startup.new(name: Faker::Company.name, alive: "true", description: Faker::Lorem.sentence)
    new_round = Round.new(date: Faker::Date.backward(3600), ammount: Faker::Number.number(6))
    new_round.startup = new_startup
    new_round.vc_firm = new_vc_firm
    new_startup.save!
    new_round.save!
  end
end
