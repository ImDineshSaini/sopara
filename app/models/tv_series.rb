class TvSeries < ApplicationRecord
  belongs_to :genre
  belongs_to :shoot_location
  has_one :country, through: :shoot_location
  has_many :crews
  has_many :actors, through: :crews, source: :castable, source_type: 'Crew'
  has_many :directors, through: :crews, source: :castable, source_type: 'Crew'
  has_many :reviews
end
