class User < ActiveRecord::Base
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :connections
  has_many :connects, :through => :connections

  has_secure_password
  EMAIL_REGEX = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
  validates :name, :email, :password, :description, presence: true
  validates :email, format: {with: EMAIL_REGEX}, uniqueness: true

  def has_friend user_id
  	friend = Friend.find_by(friend_id: user_id)
  	if friend
  		return true
  	else
  		return false
  	end
  end

  def has_connect user_id
  	connect = Connect.find_by(connect_id: user_id)
  	if connect
  		return true
  	else
  		return false
  	end
  end		
end
