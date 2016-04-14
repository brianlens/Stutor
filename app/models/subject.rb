class Subject < ActiveRecord::Base
  has_many :reservations
  has_many :students, through: :reservations
  belongs_to :tutor, class_name:"User", foreign_key: 'user_id'
  alias_attribute :tutor_id, :user_id
end
