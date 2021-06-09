class Review < ApplicationRecord
  belongs_to :tv_series
  belongs_to :user
end
