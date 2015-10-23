class Friend < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, :class_name => "user"

  def find_friend friend_id
  	friend = User.find_by(id: friend_id)
  	return friend.name
  end
end
