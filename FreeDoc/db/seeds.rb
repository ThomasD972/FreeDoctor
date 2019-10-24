# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker' 
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all

100.times do 
    c = City.create!(
        name: Faker::TvShows::GameOfThrones.city
    )
    d = Doctor.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Games::Pokemon.name,
        zip_code: Faker::Address.zip,
        city: c
        )
    p = Patient.create!(
        first_name: Faker::TvShows::GameOfThrones.character,
        last_name: Faker::Name.suffix,
        city: c
    )
    a = Appointment.create!(
        date: Faker::Date.forward,
        doctor: d,
        patient: p,
        city: c
    )
    
end 