json.extract! stock, :id, :user_id, :ticker, :price, :date, :created_at, :updated_at
json.url stock_url(stock, format: :json)
