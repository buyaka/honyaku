json.array!(@books) do |book|
  json.extract! book, :id, :name, :description, :user_id, :lang
  json.url book_url(book, format: :json)
end
