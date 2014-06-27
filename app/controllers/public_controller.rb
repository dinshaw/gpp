class PublicController < ApplicationController
  require_role "admin", :except => [:home]
  def home
    
  end
end
