class ChangeUserBillBillIdToBillUri < ActiveRecord::Migration[5.0]
  def change
    rename_column :user_bills, :bill_id, :bill_uri
  end
end
