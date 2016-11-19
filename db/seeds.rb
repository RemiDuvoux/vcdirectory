# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  # create_table "startups", force: :cascade do |t|
  #   t.string   "name"
  #   t.string   "alive"
  #   t.string   "description"
  #   t.datetime "created_at",  null: false
  #   t.datetime "updated_at",  null: false
  # end


# create_table "rounds", force: :cascade do |t|
#     t.date     "date"
#     t.string   "ammount"
#     t.integer  "vc_firm_id"
#     t.integer  "startup_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["startup_id"], name: "index_rounds_on_startup_id"
#     t.index ["vc_firm_id"], name: "index_rounds_on_vc_firm_id"
#   end

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
