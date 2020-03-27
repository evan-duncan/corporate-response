class Event < ApplicationRecord
  validates :name, presence: true
  validates :synopsis, presence: true
  validates :url, presence: true, format: URI.regexp
  validates :image, presence: true

  has_and_belongs_to_many :organizations
  has_many :evidences, dependent: :destroy
  has_one_attached :image
end
