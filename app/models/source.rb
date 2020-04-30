class Source < ApplicationRecord
  has_many :submissions
  has_one :scraping_attribute

  validates :url, presence: true, uniqueness: true, format: URI.regexp

  after_create :notify_admins

  private

  def notify_admins
    AddScrapingAttributesForSourceMailer.with(source: self).notify_admins.deliver_later
  end
end
