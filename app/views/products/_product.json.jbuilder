json.extract! product, :id, :name, :upc, :created_at, :updated_at
json.url product_url(product, format: :json)
