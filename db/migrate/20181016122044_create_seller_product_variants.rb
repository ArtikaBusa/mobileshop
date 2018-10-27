class CreateSellerProductVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :seller_product_variants do |t|
      t.integer :seller_id
      t.integer :product_variant_id
      t.decimal :price, limit: 7
      t.decimal :discount, limit: 7
      t.decimal :final_price, limit: 10

      t.timestamps
    end
  end
end
