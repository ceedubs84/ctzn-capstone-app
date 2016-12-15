class CreateBillCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :bill_categories do |t|
      t.integer :bill_id
      t.integer :category_id

      t.timestamps
    end
  end
end
