json.extract! customer, :id, :firstName, :lastName, :email, :contactNumber, :created_at, :updated_at
json.url customer_url(customer, format: :json)
