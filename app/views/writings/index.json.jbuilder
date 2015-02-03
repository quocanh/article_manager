json.array!(@writings) do |writing|
  json.extract! writing, :id, :author_id, :article_id, :order, :created
  json.url writing_url(writing, format: :json)
end
