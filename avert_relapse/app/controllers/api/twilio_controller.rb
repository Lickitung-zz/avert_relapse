class Api::TwilioController < ApplicationController
  before_action :authenticate_user

  require 'twilio-ruby'


  def text_body
    @text_message = current_user.account.messages
    render json: {message: @text_message}
  end

  def update_text_body
    # @text_message = current_user.account.messages
    # # @text_message = params[:messages] || @text_message
    # # current_user.account.messages.save
    # current_user.account.messages = params[:messages]
    # p "current_user.account.messages"
    # p current_user.account.save
    # p "params[:messages]"
    # p params[:messages]
    # render json: {message: @text_message}

    account = current_user.account
    account.messages = params[:messages]
    account.save
    render json: {message: current_user.account.messages}
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