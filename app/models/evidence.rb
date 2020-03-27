class Evidence < ApplicationRecord
  validates :url, presence: true, format: URI.regexp, uniqueness: true

  belongs_to :organization
end
