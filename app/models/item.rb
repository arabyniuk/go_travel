class Item < ActiveRecord::Base
  attr_accessible :body, :latitude, :longitude, :title, :avatar

   has_attached_file :avatar

end
