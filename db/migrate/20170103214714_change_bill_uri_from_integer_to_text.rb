class ChangeBillUriFromIntegerToText < ActiveRecord::Migration[5.0]
  def change
    change_column :user_bills, :bill_uri, :text
  end
end
