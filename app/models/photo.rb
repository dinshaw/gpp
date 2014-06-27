class Photo < ActiveRecord::Base
  belongs_to :product
  has_attachment :content_type => :image, 
                                  # :processor => :rmagick,  
                                  :storage => :file_system, 
                                  :max_size => 5000.kilobytes,
                                  :resize_to => '400x400>',
                                  :thumbnails => { :thumb => '144x144>',:icon => '50x50>' }
end
