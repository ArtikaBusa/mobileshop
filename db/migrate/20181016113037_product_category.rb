class ProductCategory < ActiveRecord::Migration[5.2]
  def change
    create_table :productcategory do |t|
      t.integer :product_id
      t.integer :category_id
    end
  end
end
