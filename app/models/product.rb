class Product < ActiveRecord::Base
  # acts_as_list :scope -> :category_id
  has_many :line_items
  has_many :photos
  belongs_to :category

  @@pages = 24;  
  
  validates_presence_of :name, :price, :category
  
  def self.display_products(page)
    paginate :per_page => @@pages, :page => page,
             :order => 'position, name'
  end
  
  def self.products_from_search(search_terms,page)
    conditions_strings = Array.new
    conditions_values = Array.new
    conditions = Array.new
    terms = search_terms.split(" ")
    terms.each do |term|
      conditions_strings << "name like ?"
      conditions_strings << "sub_name like ?"
      conditions_strings << "description like ?"
      3.times do
        conditions_values << "%#{term}%"
      end
    end
    conditions << conditions_strings.join(" or ")
    conditions += conditions_values
    
    paginate :per_page => @@pages, :page => page, :order => 'position', :conditions => conditions
  end
  
  def self.products_for_cat(cat_id,page)
    cat_id = cat_id.to_i
    cat = Category.find(cat_id)
    conditions = cat.children.length > 0 ? "category_id in (#{cat.id},#{cat.children.collect{|c| c.id}.join(',')})" : "category_id = #{cat_id}"
    paginate :per_page => @@pages, :page => page,
            :conditions => conditions,
             :order => 'name'
  end
  
  def self.search(search, page)
    paginate :per_page => @@pages, :page => page,
             :conditions => ['name like ?', "%#{search}%"],
             :order => 'name'
  end
  
  def full_name
    full_name = name
    full_name += " - #{sub_name}" if !sub_name.blank?
    full_name
  end
end
