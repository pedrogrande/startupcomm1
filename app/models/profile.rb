# == Schema Information
#
# Table name: profiles
#
#  id                :integer          not null, primary key
#  name              :string
#  profile_pic       :string
#  bio               :text
#  city              :string
#  country           :string
#  twitter           :string
#  linkedin          :string
#  website           :string
#  user_id           :integer
#  slug              :string
#  reputation_points :integer
#

class Profile < ActiveRecord::Base
  belongs_to :user

  validates :name, :city, :country, :presence => true
  validates :bio, length: { minimum: 100 }

  mount_uploader :profile_pic, ProfilePicUploader

  extend FriendlyId
  friendly_id :name, use: :slugged
end
