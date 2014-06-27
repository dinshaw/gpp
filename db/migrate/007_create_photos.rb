class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.column :size, :integer  # file size in bytes
      t.column :content_type, :string   # mime type, ex: application/mp3
      t.column :filename, :string   # sanitized filename
      t.column :height, :integer  # in pixels
      t.column :width, :integer  # in pixels
      t.column :parent_id, :integer  # id of parent image (on the same table, a self-referencing foreign-key).
      t.column :thumbnail, :string
    end
  end

  def self.down
    drop_table :photos
  end
end
