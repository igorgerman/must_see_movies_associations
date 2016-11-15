class Movie < ApplicationRecord
  # Direct associations

  has_many   :characters,
             :dependent => :destroy

  belongs_to :director,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :director_id, :presence => true

  validates :title, :uniqueness => { :scope => [:year] }

  validates :title, :presence => true

  validates :year, :numericality => { :greater_than => 1870, :less_than_or_equal_to => 2050 }

end
