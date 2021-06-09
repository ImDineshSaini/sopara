class TvSeries < ApplicationRecord
  belongs_to :genre
  belongs_to :shoot_location
  has_one :country, through: :shoot_location
  has_many :participants
  has_many :actors, through: :participants, source: :castable, source_type: 'Participant'
  has_many :directors, through: :participants, source: :castable, source_type: 'Participant'
  has_many :reviews
end
