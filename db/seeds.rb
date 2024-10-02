# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Use o comando rails dev:add_coins para adicionar as moedas (lib/tasks/dev.rake)

spinner = TTY::Spinner.new("[:spinner] Cadastrando moedas...")
spinner.auto_spin

coins = [
  { description: "Bitcoin", acronym: "BTC", url_image: "https://cryptologos.cc/logos/bitcoin-btc-logo.png" },
  { description: "Ethereum", acronym: "ETH", url_image: "https://cryptologos.cc/logos/ethereum-eth-logo.png" },
  { description: "Litecoin", acronym: "LTC", url_image: "https://cryptologos.cc/logos/litecoin-ltc-logo.png" },
  { description: "Dash", acronym: "DASH", url_image: "https://cryptologos.cc/logos/dash-dash-logo.png" },
  { description: "Monero", acronym: "XMR", url_image: "https://cryptologos.cc/logos/monero-xmr-logo.png" },
  { description: "Stellar", acronym: "XLM", url_image: "https://cryptologos.cc/logos/stellar-xlm-logo.png" },
  { description: "Cardano", acronym: "ADA", url_image: "https://cryptologos.cc/logos/cardano-ada-logo.png" },
  { description: "Dogecoin", acronym: "DOGE", url_image: "https://cryptologos.cc/logos/dogecoin-doge-logo.png" },
  { description: "Tron", acronym: "TRX", url_image: "https://cryptologos.cc/logos/tron-trx-logo.png" },
  { description: "VeChain", acronym: "VET", url_image: "https://cryptologos.cc/logos/vechain-vet-logo.png" },
  { description: "Dogecoin", acronym: "DOGE", url_image: "https://cryptologos.cc/logos/dogecoin-doge-logo.png" },
  { description: "Tether", acronym: "USDT", url_image: "https://cryptologos.cc/logos/tether-usdt-logo.png" },
  { description: "Chainlink", acronym: "LINK", url_image: "https://cryptologos.cc/logos/chainlink-link-logo.png" },
  { description: "Avalanche", acronym: "AVAX", url_image: "https://cryptologos.cc/logos/avalanche-avax-logo.png" },
  { description: "Binance Coin", acronym: "BNB", url_image: "https://cryptologos.cc/logos/bnb-bnb-logo.png" },
  { description: "Ethereum Classic", acronym: "ETC", url_image: "https://cryptologos.cc/logos/ethereum-classic-etc-logo.png" },
  { description: "Wrapped Bitcoin", acronym: "WBTC", url_image: "https://cryptologos.cc/logos/wrapped-bitcoin-wbtc-logo.png" },
  { description: "Solana", acronym: "SOL", url_image: "https://cryptologos.cc/logos/solana-sol-logo.png" },
  { description: "Uniswap", acronym: "UNI", url_image: "https://cryptologos.cc/logos/uniswap-uni-logo.png" },
  { description: "Cosmos", acronym: "ATOM", url_image: "https://cryptologos.cc/logos/cosmos-atom-logo.png" },
  { description: "Fantom", acronym: "FTM", url_image: "https://cryptologos.cc/logos/fantom-ftm-logo.png" },
  { description: "Polygon", acronym: "MATIC", url_image: "https://cryptologos.cc/logos/polygon-matic-logo.png" },
  { description: "Algorand", acronym: "ALGO", url_image: "https://cryptologos.cc/logos/algorand-algo-logo.png" },
  { description: "NEAR Protocol", acronym: "NEAR", url_image: "https://cryptologos.cc/logos/near-protocol-near-logo.png" },
  { description: "Verge", acronym: "XVG", url_image: "https://cryptologos.cc/logos/verge-xvg-logo.png" },
  { description: "Cronos", acronym: "CRO", url_image: "https://cryptologos.cc/logos/cronos-cro-logo.png" },
  { description: "Loopring", acronym: "LRC", url_image: "https://cryptologos.cc/logos/loopring-lrc-logo.png" },
  { description: "Bitcoin Cash", acronym: "BCH", url_image: "https://cryptologos.cc/logos/bitcoin-cash-bch-logo.png" },
  { description: "Hedera Hashgraph", acronym: "HBAR", url_image: "https://cryptologos.cc/logos/hedera-hashgraph-hbar-logo.png" },
  { description: "Filecoin", acronym: "FIL", url_image: "https://cryptologos.cc/logos/filecoin-fil-logo.png" },
  { description: "Bitcoin Gold", acronym: "BTG", url_image: "https://cryptologos.cc/logos/bitcoin-gold-btg-logo.png" },
  { description: "Tezos", acronym: "XTZ", url_image: "https://cryptologos.cc/logos/tezos-xtz-logo.png" },
  { description: "Litecoin", acronym: "LTC", url_image: "https://cryptologos.cc/logos/litecoin-ltc-logo.png" },
  { description: "Stellar", acronym: "XLM", url_image: "https://cryptologos.cc/logos/stellar-xlm-logo.png" },
  { description: "NEM", acronym: "XEM", url_image: "https://cryptologos.cc/logos/nem-xem-logo.png" },
  { description: "NEO", acronym: "NEO", url_image: "https://cryptologos.cc/logos/neo-neo-logo.png" },
  { description: "IOTA", acronym: "MIOTA", url_image: "https://cryptologos.cc/logos/iota-miota-logo.png" },
  { description: "ZCash", acronym: "ZEC", url_image: "https://cryptologos.cc/logos/zcash-zec-logo.png" },
]

coins.each do |coin|
  Coin.find_or_create_by!(coin)
end

spinner.success("(Concluído!)")
