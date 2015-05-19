json.array!(@profiles) do |profile|
  json.extract! profile, :id, :company_name, :description, :user_position, :type_of_business, :category, :city, :state
  json.url profile_url(profile, format: :json)
end
