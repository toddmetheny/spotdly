json.array!(@comments) do |comment|
  json.extract! comment, :id, :description, :user_id, :profile_id
  json.url comment_url(comment, format: :json)
end
