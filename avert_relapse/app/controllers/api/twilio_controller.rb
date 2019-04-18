class Api::TwilioController < ApplicationController
  before_action :authenticate_user

  require 'twilio-ruby'


  def text_body
    @text_message = "Hello! This is " + current_user.account.name + ". Testing new copy. Please text me back at my phone number which is:" + current_user.account.phone_number + " // THIS IS still a TEST //"

    # render json: {message: @text_message}
    render "show.json.jbuilder"
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