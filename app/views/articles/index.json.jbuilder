json.array!(@articles) do |article|
  json.extract! article, :id, :title, :release_year, :topic
  json.url article_url(article, format: :json)
end
