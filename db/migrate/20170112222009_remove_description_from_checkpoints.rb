class RemoveDescriptionFromCheckpoints < ActiveRecord::Migration[5.0]
  def change
    remove_column :checkpoints, :description, :string
  end
end
