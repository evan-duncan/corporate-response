class AddSentimentToSubmission < ActiveRecord::Migration[6.0]
  def change
    add_column :submissions, :sentiment, :integer
  end
end
