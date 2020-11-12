json.extract! order, :id, :seller_name, :country_origin, :units, :total_price, :date_order, :date_shipped, :multiple, :created_at, :updated_at
json.url order_url(order, format: :json)
