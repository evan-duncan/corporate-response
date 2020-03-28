class CreateSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :submissions do |t|
      t.string :url, null: false
      t.integer :opinion, null: false
      t.boolean :processed, default: false
      t.timestamp :processed_at

      t.timestamps
    end
  end
end
