class Actor < Celebrity
  has_many :participants, as: :castable
end
