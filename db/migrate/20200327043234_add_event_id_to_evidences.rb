class AddEventIdToEvidences < ActiveRecord::Migration[6.0]
  def change
    add_reference :evidences, :event
    remove_reference :evidences, :organization
  end
end
