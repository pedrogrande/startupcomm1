class StartupUser < ActiveRecord::Base
  belongs_to :startup
  belongs_to :user
end
