class User < ActiveRecord::Base
  has_many :subjects
  has_many :reservations
end
