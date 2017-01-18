class ChangeBillToBillId < ActiveRecord::Migration[5.0]
  def change
    rename_column :user_bills, :bill, :bill_id
  end
end
