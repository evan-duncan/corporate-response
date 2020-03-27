# frozen_string_literal: true

class Organization < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :domain, format: URI.regexp, uniqueness: true

  has_many :evidences, dependent: :destroy
end
