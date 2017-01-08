class AddTitleToUserBills < ActiveRecord::Migration[5.0]
  def change
    add_column :user_bills, :title, :text
  end
end
