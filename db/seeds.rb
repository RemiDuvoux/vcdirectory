# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# hardware_club = VcFirm.create!(name: "Hardware Club", creation_date: "2014", vc_type:"perf", city:"Paris", office_address: "59 Rue Beaubourg", description: "First community fund for hardware startups", website: "www.harwareclub.co", sector: "hardware")
# lima = Startup.new(name: "Lima", alive:"true", description: "Lima creates the first personal cloud")
# round = Round.new(date: "2012", ammount: 50000)
# round.startup = lima
# round.vc_firm = hardware_club
# lima.save!
# round.save!

# 10.times do
#   new_vc_firm = VcFirm.create!(name: Faker::Company.name, creation_date: Faker::Date.backward(3600), vc_type: ["perf","tax","FNA","corporate","public"].sample, city: Faker::Address.city, office_address: Faker::Address.street_address, description: Faker::Lorem.sentence, funds_under_custody: Faker::Number.number(10), website: Faker::Internet.url, sector: "tech")
#   2.times do
#     new_startup = Startup.new(name: Faker::Company.name, alive: "true", description: Faker::Lorem.sentence)
#     new_round = Round.new(date: Faker::Date.backward(3600), ammount: Faker::Number.number(6))
#     new_round.startup = new_startup
#     new_round.vc_firm = new_vc_firm
#     new_startup.save!
#     new_round.save!
#   end
# end

# url = "http://img.clubic.com/07791435-photo-playstation.jpg"
# new_vc_firm = VcFirm.create!(name: Faker::Company.name, creation_date: Faker::Date.backward(3600), vc_type: ["perf","tax","FNA","corporate","public"].sample, city: Faker::Address.city, office_address: Faker::Address.street_address, description: Faker::Lorem.sentence, funds_under_custody: Faker::Number.number(10), website: Faker::Internet.url, sector: "tech")
# new_vc_firm.logo_url = url
# new_startup

require 'csv'
csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }
filepath ||= "#{Rails.root}/db/vc_db_seed_libre_50premiers.csv"

CSV.foreach(filepath, csv_options) do |row|
  new_vc = VcFirm.create!(name: row[0], creation_date: row[1], vc_type: row[2], city: row[3], country: row[4], office_address: row[5], description: row[6], funds_under_custody: row[7], website: row[8], sector: row[9], twitter: row[11], facebook: row[12], seed_stage: row[13], series_a: row[14], series_b: row[15], series_c: row[16], growth_stage: row[17], category: row[18])
  new_vc.remote_logo_url = row[10]
  new_vc.save!
end

csv_options = { col_sep: ';', quote_char: '"'}
filepath_startups ||= "#{Rails.root}/db/rounds_seed_50_first.csv"
CSV.foreach(filepath_startups, csv_options) do |row|
  new_startup = Startup.create!(name: row[1], sector: row[2])
  new_round = Round.create!
  new_round.startup = new_startup
  new_round.vc_firm = VcFirm.find_by(name: row[0])
  new_startup.save!
  new_round.save!
end



