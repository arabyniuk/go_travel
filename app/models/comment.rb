class Comment < ActiveRecord::Base
  belongs_to :item
  attr_accessible :body, :name, :url
end
