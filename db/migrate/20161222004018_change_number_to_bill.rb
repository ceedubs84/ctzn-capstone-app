class ChangeNumberToBill < ActiveRecord::Migration[5.0]
  def change
    rename_column :bills, :number, :bill
    rename_column :bills, :sponsor_id, :sponsor
  end
end
