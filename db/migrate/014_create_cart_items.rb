class CreateCartItems < ActiveRecord::Migration
  def self.up
    create_table :cart_items do |t|
      t.integer :product_id
      t.integer :order_id
      t.integer :quantity
      t.decimal :total_price, :precision => 8, :scale => 2, :default => 0.0
      t.integer :cart_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cart_items
  end
end
