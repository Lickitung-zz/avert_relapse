class Contact < ApplicationRecord
  def index
    @contacts = Contact.all
    render "index.json.jbuilder"
  end
end
