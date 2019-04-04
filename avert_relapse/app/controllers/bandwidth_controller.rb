class BandwidthController < ApplicationController
  user_id = "u-sz6tzfhvumn3w7a5zbde2rq"
  api_secret = "5pgbu3gdlxoqxdjws7ctxzyphttjjsnqqgelqgq
"

  client = Bandwidth::Client.new(:user_id => "u-sz6tzfhvumn3w7a5zbde2rq", :api_token => "t-3dy4iofjo5tyb6jkkbix2oq  ", :api_secret => "5pgbu3gdlxoqxdjws7ctxzyphttjjsnqqgelqgq")

  def sms

    application = Application.create(client, {
    :name => "Avert_Relapse",
    :incoming_message_url => "http://5fecfbe8.ngrok.io/sms"
    })

    # message = Message.create(client, {
    #     :from => "+17372427205", # <-- This must be a Bandwidth number on your account
    #     :to => "+15123739146",
    #     :text => "Testing testing 123"
    # })
  end
end