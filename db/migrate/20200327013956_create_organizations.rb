class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name, nil: false
      t.string :domain

      t.timestamps
    end
  end
end
