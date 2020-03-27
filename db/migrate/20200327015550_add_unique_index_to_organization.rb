class AddUniqueIndexToOrganization < ActiveRecord::Migration[6.0]
  def change
    add_index :organizations, :name, unique: true
  end
end
