class Post < ApplicationRecord
  belongs_to :account
  has_many :comments, as: :commentable
end
