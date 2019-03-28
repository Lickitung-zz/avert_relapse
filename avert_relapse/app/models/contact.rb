class Contact < ApplicationRecord
  belongs_to :account
  has_many :messages
end
