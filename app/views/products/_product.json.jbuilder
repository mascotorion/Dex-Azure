json.extract! product, :id, :title, :handle, :product_type, :vendor, :description, :published_at, :created_at, :updated_at
json.url product_url(product, format: :json)
