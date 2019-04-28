class Api::TwilioController < ApplicationController
  before_action :authenticate_user

  require 'twilio-ruby'


  def text_body
    @text_message = current_user.account.messages
    render json: {help_message: @text_message}
  end

  def update_text_body
    account = current_user.account
    account.messages = params[:messages]
    account.save
    render json: {message: current_user.account.messages}
  end

  def sms
    account_sid = ENV["account_sid"]
    auth_token = ENV["auth_token"]
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = '+18887898021' # My Twilio number

    if current_user
      from = '+18887898021'
      i = 0
      current_user.account.contacts.length.times do
        to = '+1' + current_user.account.contacts[i].phone_number
        i += 1
        client.messages.create(
        from: from,
        to: to,
        body: "Hello! This is a toll-free text from #{current_user.account.name}. They are using an app called Avert Relapse to reach out to everyone on their contacts list. Here is their message:


          #{current_user.account.messages}")
      end
    end
  end
end