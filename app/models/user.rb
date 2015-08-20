# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ActiveRecord::Base
  rolify
  has_one :profile
  has_many :events
  has_many :startup_users
  has_many :startups, through: :startup_users
  has_many :questions
  has_many :answers
  has_many :reviews

  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # devise :omniauthable, :omniauth_providers => [:facebook]

  after_create :assign_default_role

  def assign_default_role
  	self.add_role :user
  end

  def self.has_reviewed?(startup)
    self.

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.profile = Profile.new
      user.profile.name = auth.info.name   # assuming the user model has a name
      user.profile.profile_pic = auth.info.image # assuming the user model has an image
      user.profile.save
    end
  end
end
