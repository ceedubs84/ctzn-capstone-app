class ChangeTitleToOfficialTitle < ActiveRecord::Migration[5.0]
  def change
    rename_column :user_bills, :title, :official_title
  end
end
