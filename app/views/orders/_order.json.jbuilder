json.extract! order, :id, :status, :message, :orderDetails, :created_at, :updated_at
json.url order_url(order, format: :json)
