class SellerProduct < ActiveRecord::Migration[5.2]
  def change
    create_table :sellerproduct do |t|
      t.integer :seller_id
      t.integer :product_id
    end
  end
end
