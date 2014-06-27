class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.column :name, :string
      t.column :sub_name, :string
      t.column :description, :text
      t.column :price, :decimal, :precision => 8, :scale => 2, :default => 0.0
      t.column :category_id, :integer
      t.column :position, :integer
      t.column :parent_id, :integer
      t.column :created_on, :timestamp
      t.column :updated_on, :timestamp      
    end
  end

  def self.down
    drop_table :products
  end
end
