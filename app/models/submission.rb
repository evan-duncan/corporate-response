# frozen_string_literal: true

class Submission < ApplicationRecord
  validates :url, presence: true, format: URI.regexp
  validates :opinion, presence: true
  validates_presence_of :processed_at, if: :processed?

  after_create :set_default_sentiment

  enum opinion: %i[
    positive
    neutral
    negative
  ], _suffix: true

  enum sentiment: %i[
    unknown
    positive
    neutral
    negative
  ], _suffix: true

  private

  def set_default_sentiment
    self.sentiment = :unknown
  end
end
