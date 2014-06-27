class MoovePhotoToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :size, :integer  # file size in bytes
    add_column :products, :content_type, :string   # mime type, ex: application/mp3
    add_column :products, :filename, :string   # sanitized filename
    add_column :products, :height, :integer  # in pixels
    add_column :products, :width, :integer  # in pixels
    add_column :products, :thumbnail, :string
  end

  def self.down
    remove_column :products, :size
    remove_column :products, :content_type
    remove_column :products, :filename
    remove_column :products, :height
    remove_column :products, :width
    remove_column :products, :parent_id
    remove_column :products, :thumbnail
  end
end
