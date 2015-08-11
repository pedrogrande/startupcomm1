class User < ActiveRecord::Base
  rolify
  has_one :profile
  has_many :events
  has_many :startup_users
  has_many :startups, through: :startup_users
  has_many :questions
  has_many :answers

  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :assign_default_role

  def assign_default_role
  	self.add_role :user
  end
end
