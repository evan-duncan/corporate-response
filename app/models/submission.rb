# frozen_string_literal: true

class Submission < ApplicationRecord
  validates :url, presence: true, format: URI.regexp
  validates :opinion, presence: true
  validates_presence_of :processed_at, if: :processed?

  after_create :set_default_sentiment
  after_create :generate_source, if: proc { source.nil? }
  after_save :identify_sentiment, if: proc { unknown_sentiment? && source.present? && source.scraping_attribute.present? }

  belongs_to :source, optional: true

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

  scope :ready_for_processing, -> { where.not(source: nil) }

  def host_name
    parsed = URI.parse(url)
    "#{parsed.scheme}://#{parsed.host}"
  end

  def path
    parsed = URI.parse(url)
    parsed.path
  end

  private

  def set_default_sentiment
    self.sentiment = :unknown
  end

  def identify_sentiment
    AnalyzeSentimentJob.perform_later(id)
  end

  def generate_source
    FindSourceJob.perform_later(url, id)
  end
end
