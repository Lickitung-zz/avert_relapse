require 'twilio-ruby'
require 'sinatra'

account_sid = "account_sid_here"
auth_token = "insert_auth_token_here"

@client = Twilio::REST::Client.new account_sid, auth_token
message = @client.messages.create(
    body: "this is a test",
    to: "+15123739146",    # Replace with your phone number
    from: "+17372042480")  # Replace with your Twilio number

puts message.sid

@client = Twilio::REST::Client.new(account_sid, auth_token)

call = @client.calls.create(
    to: "+15123739146",
    from: "+17372042480",
    url: "http://demo.twilio.com/docs/voice.xml")
puts call.to


class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def voice
    response = Twilio::TwiML::Response.new do |r|
    r.Say 'Hey there. Congrats on integrating Twilio into your Rails 4 app.', :voice => 'alice'
    r.Play 'http://linode.rabasa.com/cantina.mp3'
    end
  end

  def sms
    wiml = Twilio::TwiML::MessagingResponse.new do |r|
    r.message body: 'The Robots are coming! Head for the hills!'
    end
  end
  render_twiml response
end