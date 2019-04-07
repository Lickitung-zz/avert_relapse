class Api::TwilioController < ApplicationController
  before_action :authenticate_user

  require 'twilio-ruby'

  def sms
    account_sid = 'ACc80df19422020041afc1f74c3695ebd1'
    auth_token = '00e98f747d8b465f9f4fb2e5eb732361'
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = '+17372042480' # Your Twilio number
    to = '+1' + current_user.accounts[0].contacts[0].phone_number # Your mobile phone number

    client.messages.create(
    from: from,
    to: to,
    body: "Hello! This is " + current_user.accounts[0].name + ". I'm using an app called Avert Relapse and have pressed the 'HELP' button which means I need help! Please text me back at my phone number which is:" + current_user.accounts[0].phone_number + " // THIS IS A TEST //"
    )
  end
end