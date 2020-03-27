class CreateEvidences < ActiveRecord::Migration[6.0]
  def change
    create_table :evidences do |t|
      t.references :organization, null: false, foreign_key: true
      t.string :url, null: false, index: true
      t.boolean :fabricated, default: false

      t.timestamps
    end
  end
end
