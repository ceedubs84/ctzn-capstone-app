class ChangeBillIdToUserBillId < ActiveRecord::Migration[5.0]
  def change
    rename_column :checkpoints, :bill_id, :user_bill_id
  end
end
