# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Coin.create!(description: "Bitcoin", acronym: "BTC", url_image: "https://cryptologos.cc/logos/bitcoin-btc-logo.png")
Coin.create!(description: "Ethereum", acronym: "ETH", url_image: "https://cryptologos.cc/logos/ethereum-eth-logo.png")
Coin.create!(description: "Litecoin", acronym: "LTC", url_image: "https://cryptologos.cc/logos/litecoin-ltc-logo.png")
Coin.create!(description: "Dash", acronym: "DASH", url_image: "https://cryptologos.cc/logos/dash-dash-logo.png")
Coin.create!(description: "Monero", acronym: "XMR", url_image: "https://cryptologos.cc/logos/monero-xmr-logo.png")
Coin.create!(description: "Stellar", acronym: "XLM", url_image: "https://cryptologos.cc/logos/stellar-xlm-logo.png")
Coin.create!(description: "Cardano", acronym: "ADA", url_image: "https://cryptologos.cc/logos/cardano-ada-logo.png")
Coin.create!(description: "Dogecoin", acronym: "DOGE", url_image: "https://cryptologos.cc/logos/dogecoin-doge-logo.png")
Coin.create!(description: "Tron", acronym: "TRX", url_image: "https://cryptologos.cc/logos/tron-trx-logo.png")
Coin.create!(description: "VeChain", acronym: "VET", url_image: "https://cryptologos.cc/logos/vechain-vet-logo.png")
