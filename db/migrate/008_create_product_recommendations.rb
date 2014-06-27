class CreateProductRecommendations < ActiveRecord::Migration
  def self.up
    create_table :product_recommendations do |t|
      t.integer :category_id
      t.integer :product_id
      t.integer :user_id
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :product_recommendations
  end
end
