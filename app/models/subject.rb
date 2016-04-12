class Subject < ActiveRecord::Base
  has_many :reservations
  has_many :users
end
