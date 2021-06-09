class User < ApplicationRecord
  has_many :tv_series
  validates_presence_of :name
end
