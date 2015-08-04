class Profile < ActiveRecord::Base
  belongs_to :user

  validates :name, :bio, :city, :country, :presence => true
  validates :bio, length: { minimum: 100 }

  mount_uploader :profile_pic, ProfilePicUploader

  extend FriendlyId
  friendly_id :name, use: :slugged
end
