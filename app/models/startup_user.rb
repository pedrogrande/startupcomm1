# == Schema Information
#
# Table name: startup_users
#
#  id         :integer          not null, primary key
#  startup_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class StartupUser < ActiveRecord::Base
  belongs_to :startup
  belongs_to :user
end
