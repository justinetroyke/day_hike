class Trip < ApplicationRecord
  has_many :trip_trails
  has_many :trails, through: :trip_trails, dependent: :destroy

  def total_distance
    trails.sum(:length)
  end
end
