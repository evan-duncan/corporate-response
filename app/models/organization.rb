class Organization < ApplicationRecord
  validates_presence_of :name
  validates_format_of :domain, with: URI.regexp
end
