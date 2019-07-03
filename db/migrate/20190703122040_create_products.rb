class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :picture
      t.string :title
      t.text :main
      t.integer :price

      t.timestamps
    end
  end
end
