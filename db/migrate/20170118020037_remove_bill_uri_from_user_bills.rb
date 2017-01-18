class RemoveBillUriFromUserBills < ActiveRecord::Migration[5.0]
  def change
    remove_column :user_bills, :bill_uri, :text
  end
end
