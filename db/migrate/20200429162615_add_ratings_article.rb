class AddRatingsArticle < ActiveRecord::Migration[5.2]
   def change
    create_table :ratings do |t|
      t.references :article 
      t.references :user
      t.integer :rating
      t.timestamps
    end
  
    end
end