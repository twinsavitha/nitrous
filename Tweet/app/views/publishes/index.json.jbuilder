json.array!(@publishes) do |publish|
  json.extract! publish, :id, :topic, :text
  json.url publish_url(publish, format: :json)
end
