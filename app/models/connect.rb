class Connect < ActiveRecord::Base
  belongs_to :user
  belongs_to :connect, :class_name => "user"

  def find_connect connect_id
  	connect = User.find_by(id: connect_id)
  	return connect.name
  end
end
