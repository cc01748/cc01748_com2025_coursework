json.extract! order, :id, :customer_id, :item_id, :status, :message, :created_at, :updated_at
json.url order_url(order, format: :json)
