class Country < ApplicationRecord
  has_many :shoot_locations
  validates_presence_of :name
end
