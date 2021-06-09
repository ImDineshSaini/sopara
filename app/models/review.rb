class Review < ApplicationRecord
  belongs_to :tv_series
  belongs_to :user

  validates_presence_of :stars
end
