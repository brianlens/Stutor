class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # attr_accessible :email, :password, :username
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :subjects
  has_many :reservations
  has_one :profile
  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'

end
