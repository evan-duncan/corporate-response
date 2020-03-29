class AddDetailsToEvidence < ActiveRecord::Migration[6.0]
  def change
    add_column :evidences, :headline, :string
  end
end
