json.array!(@twitterfeeds) do |twitterfeed|
  json.extract! twitterfeed, :id
  json.url twitterfeed_url(twitterfeed, format: :json)
end
