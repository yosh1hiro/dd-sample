json.array!(@users) do |user|
  json.extract! user, :id, :name, :password_digest, :email, :gender, :occupation, :purpose, :height, :initial_weight, :target_weight, :current_weight, :loss_rate, :current_bmi, :ticket_count, :target_disease, :birthday, :auto_login_token, :initial_bmi, :pro_edition
  json.url user_url(user, format: :json)
end
