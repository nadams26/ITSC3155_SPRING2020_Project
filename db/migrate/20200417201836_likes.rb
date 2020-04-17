class Likes < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :article
    remove_column :likes, :references
    add_reference :likes, :article   
  end
end
