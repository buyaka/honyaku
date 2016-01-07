json.array!(@pages) do |page|
  json.extract! page, :id, :pagenumber, :image, :content
  json.url page_url(page, format: :json)
end
