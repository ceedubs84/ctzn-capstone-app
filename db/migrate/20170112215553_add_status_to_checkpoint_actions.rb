class AddStatusToCheckpointActions < ActiveRecord::Migration[5.0]
  def change
    add_column :checkpoint_actions, :status, :string
  end
end
