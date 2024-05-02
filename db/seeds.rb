# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

prices = [0.00, 4.99, 7.99, 14.99, 23.45, 45.00, 60.00, 250.00, 400.00, 530.00]
games = [
  ['Red Dead Redemption 2', ['Action', 'Adventure', 'Open World'], 'https://cdn.akamai.steamstatic.com/steam/apps/1174180/header.jpg?t=1714055653'],
  ['God of War', ['Action', 'Adventure', 'Hack and Slash'], 'https://cdn.akamai.steamstatic.com/steam/apps/1593500/header.jpg?t=1695758729'],
  ['Celeste', %w[Platformer Indie], 'https://cdn.akamai.steamstatic.com/steam/apps/504230/header.jpg?t=1714089525'],
  ['Monster Hunter: World', ['Action', 'RPG', 'Open World'], 'https://cdn.akamai.steamstatic.com/steam/apps/582010/header.jpg?t=1711328912'],
  ['Sekiro: Shadows Die Twice', %w[Action Adventure Souls-like], 'https://cdn.akamai.steamstatic.com/steam/apps/814380/header.jpg?t=1678991267'],
  ['Disco Elysium', %w[RPG Narrative], 'https://cdn.akamai.steamstatic.com/steam/apps/632470/header.jpg?t=1712320924'],
  ['Doom Eternal', ['First-Person Shooter', 'Action'], 'https://cdn.akamai.steamstatic.com/steam/apps/782330/header.jpg?t=1702308063'],
  ['Death Stranding', %w[Action Adventure], 'https://cdn.akamai.steamstatic.com/steam/apps/1850570/header.jpg?t=1713782964'],
  ['Animal Crossing: New Horizons', %w[Simulation Sandbox]],
  ['Control', ['Action', 'Adventure', 'Third-Person Shooter']],
  ['Fire Emblem: Three Houses', ['Tactical RPG', 'Strategy']],
  ['Resident Evil 2 Remake', ['Survival Horror', 'Action']],
  ['Ghost of Tsushima', ['Action', 'Adventure', 'Open World']],
  ['Ori and the Will of the Wisps', %w[Platformer Metroidvania]],
  ['Final Fantasy VII Remake', %w[Action RPG JRPG]],
  ['The Outer Worlds', ['Action', 'RPG', 'Open World']],
  ['Outer Wilds', %w[Adventure Puzzle]],
  ['Genshin Impact', ['Action', 'RPG', 'Open World']],
  ['Slay the Spire', %w[Deck-building Roguelike]],
  ['Return of the Obra Dinn', %w[Adventure Puzzle]],
  ['Into the Breach', ['Strategy', 'Turn-based Tactics']],
  ['Hades', %w[Action RPG Roguelike]],
  ['Half-Life: Alyx', ['Virtual Reality', 'First-Person Shooter']],
  ['The Last of Us Part II', ['Action', 'Adventure', 'Survival Horror']],
  ["Demon's Souls Remake", %w[Action RPG Souls-like]],
  ['Spider-Man: Miles Morales', ['Action', 'Adventure', 'Open World']],
  ['Star Wars Jedi: Fallen Order', ['Action', 'Adventure', 'Open World']],
  ['Control: Ultimate Edition', ['Action', 'Adventure', 'Third-Person Shooter']],
  ['Cyberpunk 2077', ['Action', 'RPG', 'Open World']],
  ['Resident Evil 3 Remake', ['Survival Horror', 'Action']],
  ["Assassin's Creed Valhalla", ['Action', 'Adventure', 'Open World']],
  ['Watch Dogs: Legion', ['Action', 'Adventure', 'Open World']],
  ['Yakuza: Like a Dragon', %w[Action Adventure RPG]],
  ['Microsoft Flight Simulator', ['Flight Simulation', 'Open World']],
  ["Tony Hawk's Pro Skater 1 + 2", %w[Sports Skateboarding]],
  ['Immortals Fenyx Rising', ['Action', 'Adventure', 'Open World']],
  ["Astro's Playroom", %w[Platformer Puzzle]],
  ['Among Us', ['Party', 'Social Deduction']],
  ['Fall Guys: Ultimate Knockout', ['Battle Royale', 'Platformer']],
  ['Paper Mario: The Origami King', %w[RPG Adventure]],
  ["Ghost of Tsushima: Director's Cut", ['Action', 'Adventure', 'Open World']],
  ['Deathloop', ['Action', 'First-Person Shooter']],
  ['Hitman 3', %w[Stealth Action]],
  ['Ratchet & Clank: Rift Apart', %w[Platformer Action Adventure]],
  ['It Takes Two', %w[Co-op Action Adventure]],
  ['Resident Evil Village', ['Survival Horror Action']],
  ['Psychonauts 2', %w[Platformer Action Adventure]],
  ['Metroid Dread', %w[Action Adventure Platformer]],
  ['Forza Horizon 5', ['Racing', 'Open World']],
  ['Guardians of the Galaxy', %w[Action Adventure Narrative]]
]

dlcs = [
  ['Outlast: Whistleblower DLC', %w[Horror Action Adventure], 'https://cdn.akamai.steamstatic.com/steam/apps/273300/header.jpg?t=1618944936'],
  ['House Flipper - Pets DLC', %w[Simulation Indie], 'https://cdn.akamai.steamstatic.com/steam/apps/1569190/header.jpg?t=1710593163'],
  ['Sonic Mania - Encore DLC', %w[Adventure Action], 'https://cdn.akamai.steamstatic.com/steam/apps/845640/header.jpg?t=1571827133'],
  ['Monster Hunter World: Iceborne', ['Action', 'Co-op', 'Open World'], 'https://cdn.akamai.steamstatic.com/steam/apps/1118010/header.jpg?t=1702368891']
]

gift_cards = [
  ['PSN Gift Card - R$35,00', [], 'https://gmedia.playstation.com/is/image/SIEPDC/ps-store-credit-image-block-35-pt-br25sep23?$native$'],
  ['PSN Gift Card - R$150,00', [], 'https://gmedia.playstation.com/is/image/SIEPDC/ps-store-credit-image-block-150-pt-br25sep23?$native$'],
  ['PSN Gift Card - R$300,00', [], 'https://gmedia.playstation.com/is/image/SIEPDC/ps-store-credit-image-block-300-pt-br25sep23?$native$'],
  ['PSN Gift Card - R$400,00', [], 'https://gmedia.playstation.com/is/image/SIEPDC/ps-store-credit-image-block-400-pt-br25sep23?$native$'],
  ['PSN Gift Card - R$530,00', [], 'https://gmedia.playstation.com/is/image/SIEPDC/ps-store-credit-image-block-530-pt-br25sep23?$native$']
]

games.each do |game_name, category_names, image_url|
  categories = category_names.map { Category.find_or_create_by!(name: _1) }
  product = Product.find_or_create_by!(name: game_name)

  product.update(categories:, price: prices.sample, image_url:, content_type: 'game')
end

dlcs.each do |dlc_name, category_names, image_url|
  categories = category_names.map { Category.find_or_create_by!(name: _1) }
  product = Product.find_or_create_by!(name: dlc_name)

  product.update(categories:, price: prices.sample, image_url:, content_type: 'dlc')
end

gift_cards.each do |gift_card_name, category_names, image_url|
  categories = category_names.map { Category.find_or_create_by!(name: _1) }
  product = Product.find_or_create_by!(name: gift_card_name)

  product.update(categories:, price: prices.sample, image_url:, content_type: 'gift_card')
end
