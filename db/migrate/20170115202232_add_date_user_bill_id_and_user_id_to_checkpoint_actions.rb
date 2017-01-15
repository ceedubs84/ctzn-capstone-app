class AddDateUserBillIdAndUserIdToCheckpointActions < ActiveRecord::Migration[5.0]
  def change
    add_column :checkpoint_actions, :date, :string
    add_column :checkpoint_actions, :user_bill_id, :integer
    add_column :checkpoint_actions, :user_id, :integer
  end
end
