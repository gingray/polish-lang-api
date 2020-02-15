# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
LanguagePart.create!(name: 'verb')
LanguagePart.create!(name: 'adjective')
LanguagePart.create!(name: 'noun')

LanguagePart.create!(name: 'male')
LanguagePart.create!(name: 'female')
LanguagePart.create!(name: 'neutral')

LanguagePart.create!(name: 'i')
LanguagePart.create!(name: 'you')
LanguagePart.create!(name: 'he_she_it')
LanguagePart.create!(name: 'you_plural')
LanguagePart.create!(name: 'they_man')
LanguagePart.create!(name: 'they_others')


LanguagePart.create!(name: 'nominative_case')
LanguagePart.create!(name: 'instrumental_case')
LanguagePart.create!(name: 'accusative_case')

