json.array!(@shares) do |share|
  json.extract! share, :id, :user_id, :book_id, :sent
  json.url share_url(share, format: :json)
end
