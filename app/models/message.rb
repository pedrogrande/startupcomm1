class Message < ActiveRecord::Base

	def self.unread(user_id)
		# where("receiver_id == ? and read != ?", user_id, true)
		where(read: [false, nil], receiver_id: user_id)
	end
end
