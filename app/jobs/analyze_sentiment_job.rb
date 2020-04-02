# frozen_string_literal: true

class AnalyzeSentimentJob < ApplicationJob
  queue_as :default

  def perform(submission_id)
    submission = Submission.find_by(id: submission_id)

    return if submission.nil?

    analyzer = Sentimental.new
    submission.sentiment = analyzer.sentiment(text_from(crawl(submission)))
    submission.save!
  end

  private

  def text_from(results)
    results.values.flat_map { |value| Array.wrap(value) }.join('')
  end

  def crawl(submission)
    Wombat.crawl do
      base_url submission.source.url
      path submission.path
      heading css: submission.source.scraping_attribute.heading_selector
      subheading css: submission.source.scraping_attribute.subheading_selector
      story({ css: submission.source.scraping_attribute.story_selector }, list)
    end
  end
end
