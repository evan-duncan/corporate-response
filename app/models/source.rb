class Source < ApplicationRecord
  has_many :submissions
  has_one :scraping_attribute

  validates :url, presence: true, uniqueness: true, format: URI.regexp
end
