class CreateSellings < ActiveRecord::Migration[5.2]
  def change
    create_table :sellings do |t|
      t.integer :shop_id
      t.integer :product_id

      t.timestamps
    end
  end
end
