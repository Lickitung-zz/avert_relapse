class Api::TwilioController < ApplicationController
  before_action :authenticate_user

  require 'twilio-ruby'

  def sms
    account_sid = ENV["NEW_API_KEY"]
    auth_token = ENV["NEW_AUTH_TOKEN"]
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = '+17372042024' # My Twilio number

    if current_user
      from = '+17372042024'
      i = 0
      current_user.account.contacts.length.times do
        to = '+1' + current_user.account.contacts[i].phone_number
        i += 1
        client.messages.create(
        from: from,
        to: to,
        body: "Hello! This is " + current_user.account.name + ". I'm using an app called Avert Relapse and have pressed the 'HELP' button which means I need help! Please text me back at my phone number which is:" + current_user.account.phone_number + " // THIS IS A TEST //")
      end
    end
  end
end