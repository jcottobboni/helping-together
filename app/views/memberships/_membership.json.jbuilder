json.extract! membership, :id, :memberable_id, :user_id, :created_at, :updated_at
json.url membership_url(membership, format: :json)
