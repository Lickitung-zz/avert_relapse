class Api::TwilioController < ApplicationController
  before_action :authenticate_user

  require 'twilio-ruby'


  def text_body
    @text_message = current_user.account.messages
    render json: {message: @text_message}
  end

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
        body: current_user.account.messages)
      end
    end
  end
end