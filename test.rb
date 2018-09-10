require 'http'
require 'json'

response = HTTP.post("https://slack.com/api/chat.postMessage", params: {
    # token: ENV['SLACK_API_TOKEN'],
    token:   "xoxb-316480411062-431704217633-ogrBJSVb21zmk9UCMFjzhatp",
    channel: "#test",
    text:    "こんにちは！",
    as_user: true,
  })
puts JSON.pretty_generate(JSON.parse(response.body))
