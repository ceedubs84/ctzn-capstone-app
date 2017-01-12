class AddDescriptionToCheckpointActions < ActiveRecord::Migration[5.0]
  def change
    add_column :checkpoint_actions, :description, :text
  end
end
