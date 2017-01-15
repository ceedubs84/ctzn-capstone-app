class RemoveCheckpointIdFromCheckpointActions < ActiveRecord::Migration[5.0]
  def change
    remove_column :checkpoint_actions, :checkpoint_id, :integer
  end
end
