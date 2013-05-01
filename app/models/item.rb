class Item < ActiveRecord::Base

  attr_accessible :body, :latitude, :longitude, :title, :user_id, :avatar

  has_attached_file :avatar

  belongs_to :user
  has_many :comments

end
