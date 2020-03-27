# frozen_string_literal: true

class Organization < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :domain, format: URI.regexp, uniqueness: true

  has_and_belongs_to_many :events
  has_many :evidences, through: :events
end
