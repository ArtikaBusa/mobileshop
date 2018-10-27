class CreateProductVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :product_variants do |t|
      t.integer :product_id
      t.integer :storage_id
      t.integer :color_id
      t.integer :ram_id
      t.integer :display_id
      t.integer :processore_id
      t.decimal :price
      t.integer :width, limit: 5
      t.integer :height, limit: 5
      t.integer :thickness, limit: 5
      t.integer :weight, limit: 5
      t.integer :front_camera, limit: 10
      t.integer :rear_camera, limit: 10

      t.timestamps
    end
  end
end
