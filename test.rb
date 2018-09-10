# test.rb
require 'http'
require 'json'
require 'eventmachine'
require 'faye/websocket'
require 'dotenv'
Dotenv.load

response = HTTP.post("https://slack.com/api/rtm.start", params: {
    token: ENV['SLACK_API_TOKEN'],
  })

rc = JSON.parse(response.body)

puts rc['url']
