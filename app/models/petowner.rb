class Petowner < ApplicationRecord
  has_many :swipes
  has_many :ratings

  def score
    all_ratings = ratings.where.not(rating_by_sitter_value: nil)
    rating_array = all_ratings.pluck(:rating_by_sitter_value)
    ratings_sum = rating_array.reduce(:+).to_f
    ratings_count = all_ratings.count.to_f

    average = ratings_sum / ratings_count

    return average
  end
end
