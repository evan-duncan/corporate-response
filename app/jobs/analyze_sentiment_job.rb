class AnalyzeSentimentJob < ApplicationJob
  queue_as :default

  def perform(submission_id, text)
    submission = Submission.find_by(id: submission_id)

    return if submission.nil?

    analyzer = Sentimental.new
    submission.sentiment = analyzer.sentiment(text)
  end
end
