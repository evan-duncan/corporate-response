class CreateEventsOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :events_organizations do |t|
      t.references :event, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true
    end
  end
end
