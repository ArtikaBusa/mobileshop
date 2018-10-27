class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :seller_id
      t.integer :seller_product_variant_id
      t.decimal :price,limit: 7
      t.decimal :discount, limit: 7
      t.decimal :final_price, limit: 7
      t.integer :product_variant_id
      t.string :address, limit: 500
      t.string :city, limit: 100
      t.string :state, limit: 100
      t.string :pincode, limit: 6
      t.timestamp :ordered_date
      t.timestamp :shipping_date
      t.timestamp :cancle_date

      t.timestamps
    end
  end
end
