json.extract! user, :id, :name, :email, :password, :password_confirmation, :linked_in, :twitter, :verified, :premium, :created_at, :updated_at
json.url user_url(user, format: :json)
