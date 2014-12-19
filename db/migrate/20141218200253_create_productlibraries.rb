class CreateProductlibraries < ActiveRecord::Migration
  def change
    create_table :productlibraries do |t|
  
       t.string :catalog_number
       t.text :description
  
      t.timestamps
    end
  end
end
