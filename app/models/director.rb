class Director < Celebrity
  has_many :participants, as: :castable
end
