class Api::TwilioController < ApplicationController
  before_action :authenticate_user

  require 'twilio-ruby'

  def sms
    account_sid = 'ACc80df19422020041afc1f74c3695ebd1'
    auth_token = '00e98f747d8b465f9f4fb2e5eb732361'
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = '+17372042480' # Your Twilio number
    to = '+15123739146' # Your mobile phone number

    client.messages.create(
    from: from,
    to: to,
    body: "what it do boo"
    )
  end
end