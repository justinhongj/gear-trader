class User < ActiveRecord::Base

  has_many :chats, :through => :user_chat
  has_many :messages

  has_secure_password

  validates :email, presence: true, uniqueness: { case_sensitive: false}

end

