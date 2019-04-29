class Friend < ApplicationRecord
  belongs_to :account
  include AlgoliaSearch

  algoliasearch do
    attribute :first_name, :lastname
  end
end
