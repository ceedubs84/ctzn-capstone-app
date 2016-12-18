class CreateCheckpointActions < ActiveRecord::Migration[5.0]
  def change
    create_table :checkpoint_actions do |t|
      t.integer :checkpoint_id
      t.integer :action_id

      t.timestamps
    end
  end
end
