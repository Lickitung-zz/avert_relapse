class Account < ApplicationRecord
  belongs_to :user
  has_many :contacts
  has_many :friends

  include AlgoliaSearch

  algoliasearch do
    attributes :first_name, :last_name
  end
end