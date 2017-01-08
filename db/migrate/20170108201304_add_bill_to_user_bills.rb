class AddBillToUserBills < ActiveRecord::Migration[5.0]
  def change
    add_column :user_bills, :bill, :string
  end
end
