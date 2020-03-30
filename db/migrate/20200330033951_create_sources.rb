class CreateSources < ActiveRecord::Migration[6.0]
  def change
    create_table :sources do |t|
      t.string :name
      t.string :url, unique: true

      t.timestamps
    end
    add_index :sources, :name
  end
end
