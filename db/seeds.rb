# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@shadowless = Lot.create!(name: "Base Shadowless", total_cards: 102, original_150: true, release_year: 1999)
@jungle = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
@base = Lot.create!(name: "Base Set", total_cards: 102, original_150: true, release_year: 1999)


@magikarp = @shadowless.cards.create!(name: "Magikarp", value: 3, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false)
@kangaskhan = @jungle.cards.create!(name: "Kangaskhan", value: 35, holo: true, rarity_symbol: "Star", condition: "LP", english: true, first_edition: true)
@pidgey = @shadowless.cards.create!(name: "Pidgey", value: 3, holo: false, rarity_symbol: "Circle", condition: "NM", english: true, first_edition: false)