class AddSourceToSubmission < ActiveRecord::Migration[6.0]
  def change
    add_reference :submissions, :source, null: true, foreign_key: true
  end
end
