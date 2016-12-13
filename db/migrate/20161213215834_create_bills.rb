class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.string :congress
      t.string :number
      t.text :bill_uri
      t.text :title
      t.string :sponsor_id
      t.string :introduced_date
      t.string :cosponsors
      t.text :committees
      t.string :latest_major_action_date
      t.text :latest_major_action
      t.text :sponsor_uri
      t.text :gpo_pdf_uri
      t.string :house_passage_vote
      t.string :senate_passage_vote

      t.timestamps
    end
  end
end
