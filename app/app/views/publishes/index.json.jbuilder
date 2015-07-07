json.array!(@publishes) do |publish|
  json.extract! publish, :id, :title, :text
  json.url publish_url(publish, format: :json)
end
