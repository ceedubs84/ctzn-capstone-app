class RemoveCongressAndBillIdFromBills < ActiveRecord::Migration[5.0]
  def change
    remove_column :bills, :congress, :string
    remove_column :bills, :bill, :string
  end
end
