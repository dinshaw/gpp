class CreateAdminPhotos < ActiveRecord::Migration
  def self.up
    create_table :admin_photos do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_photos
  end
end
