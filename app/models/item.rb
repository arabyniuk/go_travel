class Item < ActiveRecord::Base

  attr_accessible :body, :latitude, :longitude, :title, :published_at, :user_id, :attachments_attributes

  belongs_to :user
  has_many :comments
  has_many :attachments, :as => :attachable

  accepts_nested_attributes_for :attachments

  validates :title, presence: true

  scope :unreleased, where( :created_at => nil )
end
