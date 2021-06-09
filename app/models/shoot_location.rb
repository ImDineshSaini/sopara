class ShootLocation < ApplicationRecord
  belongs_to :country
  has_many :tv_series
end
