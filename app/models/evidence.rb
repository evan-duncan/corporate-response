class Evidence < ApplicationRecord
  validates :url, presence: true, format: URI.regexp, uniqueness: true

  belongs_to :event

  scope :for_event, ->(event) { where(event_id: event.id) }
end
