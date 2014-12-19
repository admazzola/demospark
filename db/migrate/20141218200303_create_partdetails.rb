class CreatePartdetails < ActiveRecord::Migration
  def change
    create_table :partdetails do |t|
  
      t.integer :catalog_id
      t.integer :barcode
      t.string :series

      t.timestamps
    end
  end
end
