class RemoveWrongBillColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :bills, :title, :text
    remove_column :bills, :sponsor, :string
    remove_column :bills, :introduced_date, :string
    remove_column :bills, :cosponsors, :string
    remove_column :bills, :committees, :text
    remove_column :bills, :latest_major_action_date, :string
    remove_column :bills, :latest_major_action, :text
    remove_column :bills, :sponsor_uri, :text
    remove_column :bills, :gpo_pdf_uri, :text
    remove_column :bills, :house_passage_vote, :string
    remove_column :bills, :senate_passage_vote, :string
  end
end
