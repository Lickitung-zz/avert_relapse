class Api::TwilioController < ApplicationController
  before_action :authenticate_user

  require 'twilio-ruby'

  def sms
    # account_sid = 'ACc80df19422020041afc1f74c3695ebd1'
    account_sid = ENV["NEW_API_KEY"]
    auth_token = ENV["NEW_AUTH_TOKEN"]
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = '+17372042024' # My Twilio number
    to = '+1' + current_user.account.contacts[1].phone_number # My mobile phone number, sends to my phone number for test

    client.messages.create(
    from: from,
    to: to,
    body: "Hello! This is " + current_user.accounts[0].name + ". I'm using an app called Avert Relapse and have pressed the 'HELP' button which means I need help! Please text me back at my phone number which is:" + current_user.accounts[0].phone_number + " // THIS IS A TEST //"
    )
  end
end