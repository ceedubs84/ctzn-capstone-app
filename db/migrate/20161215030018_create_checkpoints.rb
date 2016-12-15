class CreateCheckpoints < ActiveRecord::Migration[5.0]
  def change
    create_table :checkpoints do |t|
      t.string :date
      t.string :description
      t.integer :bill_id
      t.integer :user_id

      t.timestamps
    end
  end
end
