class CreateLineItems < ActiveRecord::Migration
  def self.up
    create_table :line_items do |t|
      t.column :product_id, :integer, :null => false 
      t.column :order_id, :integer, :null => false 
      t.column :quantity, :integer, :null => false 
      t.column :total_price, :decimal, :null => false, :precision => 8, :scale => 2
    end
  end

  def self.down
    drop_table :line_items
  end
end
