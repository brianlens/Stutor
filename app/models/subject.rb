class Subject < ActiveRecord::Base
  has_many Reservations
end
