
require 'twitter'
class Twitterfeed < ActiveRecord::Base


@@client = Twitter::REST::Client.new do |config|
  config.consumer_key = 'AfmJgIlPWCoetxNUGSVGkQzqN'
  config.consumer_secret = 'JqZWXepFzApQQ4B1WAd9N5MymHoH1almYvAj95vT7domBbHU5U'
  config.oauth_token = '1284314953-vnAmfMLM7UGHUOyfWHapkRXXOBoEa5mfLwYpLxP'
  config.oauth_token_secret = 'XWGJDISQ0TVSdOoV9WNEyAGsGBM1HkqEZdahcD8q4iQk4'
end
def user_timeline(qt)
    @@client.user_timeline(count: qt)
  end
   
end
