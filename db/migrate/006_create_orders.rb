class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.column :user_id, :integer 
      t.column :pay_type, :string, :limit => 10
    end
  end

  def self.down
    drop_table :orders
  end
end
