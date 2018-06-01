class Trip < ApplicationRecord
  has_many :trip_trails
  has_many :trails, through: :trip_trails, dependent: :destroy

  def total_distance
    trails.sum(:length)
  end

  def average_distance
    trails.average(:length).to_f
  end

  def longest_distance
    trails.maximum(:length)
  end

  def shortest_distance
    trails.minimum(:length)
  end
end
