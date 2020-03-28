# frozen_string_literal: true

class Organization < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :domain, format: URI::DEFAULT_PARSER.make_regexp, uniqueness: true

  has_and_belongs_to_many :events
  has_many :evidences, through: :events

  def self.name_search(q)
    where('similarity(name, ?) > 0.3', q)
      .order(Arel.sql("similarity(name, #{connection.quote(q)}) DESC"))
  end
end
