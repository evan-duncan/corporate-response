class CreateScrapingAttributes < ActiveRecord::Migration[6.0]
  def change
    create_table :scraping_attributes do |t|
      t.string :heading_selector
      t.string :subheading_selector
      t.string :story_selector
      t.references :source, null: false, foreign_key: true

      t.timestamps
    end
  end
end
