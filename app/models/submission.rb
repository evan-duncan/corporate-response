# frozen_string_literal: true

class Submission < ApplicationRecord
  validates :url, presence: true, format: URI.regexp
  validates :opinion, presence: true
  validates_presence_of :processed_at, if: :processed?

  enum opinion: %i[
    positive
    neutral
    negative
  ]
end
