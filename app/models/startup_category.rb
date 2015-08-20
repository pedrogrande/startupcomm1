class StartupCategory < ActiveRecord::Base
  belongs_to :startup
  belongs_to :category
end
