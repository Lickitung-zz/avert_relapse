class Api::AccountsController < ApplicationController
  def index
    @accounts = Account.all
    render "index.json.jbuilder"
  end
end
