class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :description
      t.string :category_name
      t.float :price

      t.timestamps
    end
  end
end
