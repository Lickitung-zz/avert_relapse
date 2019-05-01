class Account < ApplicationRecord
  belongs_to :user
  has_many :contacts
  has_many :friends
  has_many :posts
  has_many :images
end