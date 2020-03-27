class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name, null: false, unique: true
      t.text :synopsis, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end
