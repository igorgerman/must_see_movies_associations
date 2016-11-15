class Character < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :movie_id, :presence => true

  validates :name, :presence => true

end
