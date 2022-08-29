# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@shadowless = Lot.create!(name: "Base Shadowless", total_cards: 102, original_150: true, release_year: 1999)
@magikarp = @shadowless.cards.create!(name: "Magikarp", value: 3, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false)
@pidgey = @shadowless.cards.create!(name: "Pidgey", value: 3, holo: false, rarity_symbol: "Circle", condition: "NM", english: true, first_edition: false)
@charizard = @shadowless.cards.create(name: "Charizard", value: 500, holo: true, rarity_symbol: "Star", condition: "HP", english: true, first_edition: false)
@kadabra = @shadowless.cards.create(name: "Kadabra", value: 35, holo: true, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: true)
@blastoise = @shadowless.cards.create(name: "Blastoise", value: 260, holo: true, rarity_symbol: "Star", condition: "LP", english: true, first_edition: false)
@dragonair = @shadowless.cards.create(name: "Dragonair", value: 150, holo: false, rarity_symbol: "Star", condition: "LP", english: true, first_edition: true)

@jungle = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
@kangaskhan = @jungle.cards.create!(name: "Kangaskhan", value: 35, holo: true, rarity_symbol: "Star", condition: "LP", english: true, first_edition: true)

@base = Lot.create!(name: "Base Set", total_cards: 102, original_150: true, release_year: 1999)

@fossil = Lot.create(name: "Fossil", total_cards: 62, original_150: true, release_year: 1999)
@aerodactyl = @fossil.cards.create(name: "Aerodactyl", value: 50, holo: true, rarity_symbol: "Star", condition: "NM", english: true, first_edition: true)
@omastar = @fossil.cards.create(name: "Omastar", value: 1, holo: false, rarity_symbol: "Diamond", condition: "NM", english: true, first_edition: false)
@cloyster = @fossil.cards.create(name: "Cloyster", value: 1, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false)
@gastly = @fossil.cards.create(name: "Gastly", value: 1, holo: false, rarity_symbol: "Diamond", condition: "NM", english: true, first_edition: false)
@krabby = @fossil.cards.create(name: "Krabby", value: 1, holo: false, rarity_symbol: "Circle", condition: "MP", english: true, first_edition: false)
@horsea = @fossil.cards.create(name: "Horsea", value: 1, holo: false, rarity_symbol: "Circle", condition: "MP", english: true, first_edition: false)
@shellder = @fossil.cards.create(name: "Shellder", value: 1, holo: false, rarity_symbol: "Circle", condition: "NM", english: true, first_edition: false)
@mysterious_fossil = @fossil.cards.create(name: "Mysterious Fossil", value: 1, holo: false, rarity_symbol: "Circle", condition: "NM", english: true, first_edition: false)
@magneton = @fossil.cards.create(name: "Magneton", value: 9, holo: true, rarity_symbol: "Star", condition: "NM", english: true, first_edition: false)
@muk_28 = @fossil.cards.create(name: "Muk", value: 2, holo: false, rarity_symbol: "Star", condition: "LP", english: true, first_edition: false)
@hypno = @fossil.cards.create(name: "Hypno", value: 2, holo: false, rarity_symbol: "Star", condition: "NM", english: true, first_edition: false) #value
@haunter = @fossil.cards.create(name: "Haunter", value: 2, holo: true, rarity_symbol: "Star", condition: "NM", english: true, first_edition: false) #value
@kingler = @fossil.cards.create(name: "Kingler", value: 1, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false) #value
@seadra = @fossil.cards.create(name: "Seadra", value: 1, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false) #value
@zapdos = @fossil.cards.create(name: "Zapdos", value: 2, holo: false, rarity_symbol: "Star", condition: "LP", english: true, first_edition: false) #value
@articuno_17 = @fossil.cards.create(name: "Articuno", value: 2, holo: false, rarity_symbol: "Star", condition: "NM", english: true, first_edition: false) #value
@raichu = @fossil.cards.create(name: "Raichu", value: 2, holo: false, rarity_symbol: "Star", condition: "MP", english: true, first_edition: false) #value
@articuno_2 = @fossil.cards.create(name: "Articuno", value: 50, holo: true, rarity_symbol: "Star", condition: "NM", english: true, first_edition: true) #value
@dragonite = @fossil.cards.create(name: "Dragonite", value: 50, holo: true, rarity_symbol: "Star", condition: "NM", english: true, first_edition: true) #value
@muk_13 = @fossil.cards.create(name: "Muk", value: 50, holo: true, rarity_symbol: "Star", condition: "NM", english: true, first_edition: false) #value
@grimer = @fossil.cards.create(name: "Grimer", value: 50, holo: false, rarity_symbol: "Circle", condition: "NM", english: true, first_edition: false) #value
@gengar = @fossil.cards.create(name: "Gengar", value: 2, holo: false, rarity_symbol: "Star", condition: "LP", english: true, first_edition: false) #value
@haunter_21 = @fossil.cards.create(name: "Haunter", value: 2, holo: false, rarity_symbol: "Star", condition: "LP", english: true, first_edition: false) #value
@weezing = @fossil.cards.create(name: "Weezing", value: 2, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false) #value
@magmar = @fossil.cards.create(name: "Magmar", value: 2, holo: false, rarity_symbol: "Diamond", condition: "NM", english: true, first_edition: false) #value
@slowbro = @fossil.cards.create(name: "Slowbro", value: 2, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false) #value
@slowpoke = @fossil.cards.create(name: "Slowpoke", value: 2, holo: false, rarity_symbol: "Circle", condition: "LP", english: true, first_edition: false) #value









