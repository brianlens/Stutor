class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :subjects
  has_many :reservations

 validates :username, presence: true
validates :username, uniqueness: true

validates :password, presence: true, length: { in: 5..20 }

 validates :phone, allow_blank: true, length: { in: 5..20 }
 validates :email, allow_blank: true, length: { in: 5..50 }

 validates_format_of :phone, allow_blank: true, :with => /\A[+ 0-9]+$\z/
 validates_format_of :email, allow_blank: true, :with => /@/, message: 'must contain @.'

end
