json.extract! donation, :id, :charity_id, :user_id, :goal_id, :amount, :created_at, :updated_at
json.url donation_url(donation, format: :json)
