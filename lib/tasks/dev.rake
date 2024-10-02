namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    
    if Rails.env.development?
      show_spinner("Apagando Banco de Dados ...") do
        %x(rails db:drop)
      end

      # Outra forma de mandar o parametro do yeld para o spinner equivalente ao do/end
      show_spinner("Criando Banco de Dados ...") { %x(rails db:create) }

      show_spinner("Migrando banco de dados ..."){ %x(rails db:migrate) }

      show_spinner("Populando banco de dados ..."){ %x(rails dev:add_coins dev:add_mining_types) }
    else
      puts "Você não esta no ambiente de desenvolvimento."
    end
  end

  desc "Cadastra moedas"
  task add_coins: :environment do
    show_spinner("Cadastrando Moedas...") do
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
    end
  end

  desc "Cadastra Tipos de Mineração"
  task add_mining_types: :environment do
    show_spinner("Cadastrando Tipos de Mineração...") do
      mining_types = [
        { description: "Proof of Work", acronym: "PoW" },
        { description: "Proof of Stake", acronym: "PoS" },
        { description: "Proof of Capacity", acronym: "PoC" },
        { description: "Proof of Authority", acronym: "PoA" },
        { description: "Proof of Time", acronym: "PoT" },
        { description: "Proof of Trust", acronym: "PoT" },
        { description: "Proof of Ownership", acronym: "PoO" },
        { description: "Proof of Censorship", acronym: "PoC" },
        { description: "Proof of Delegation", acronym: "PoD" },
        { description: "Proof of Participation", acronym: "PoP" },
        { description: "Proof of Reserves", acronym: "PoR" },
        { description: "Proof of Utility", acronym: "PoU" },
      ]

      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_types)
      end
    end
  end

  private
  def show_spinner(msg_start, msg_end = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
