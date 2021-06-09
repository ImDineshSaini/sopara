class Crew < ApplicationRecord
  belongs_to :crewable, polymorphic: true
end
