class Item < ActiveRecord::Base

  attr_accessible :body, :latitude, :longitude, :title, :user_id, :attachments_attributes

  belongs_to :user
  has_many :comments
  has_many :attachments, :as => :attachable

  accepts_nested_attributes_for :attachments

  scope :unreleased, where( :created_at => nil )
end
