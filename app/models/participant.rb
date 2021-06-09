class Participant < ApplicationRecord
  belongs_to :castable, polymorphic: true
end
