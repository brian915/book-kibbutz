json.array!(@shareds) do |shared|
  json.extract! shared, :id, :user_id, :book_id, :sent
  json.url shared_url(shared, format: :json)
end
