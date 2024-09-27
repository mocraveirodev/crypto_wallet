json.extract! coin, :id, :description, :acronym, :url_imagee, :created_at, :updated_at
json.url coin_url(coin, format: :json)
