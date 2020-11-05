class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def to_s
    "Episode #{self.number} - #{self.date_to_s}"
  end

  def date_to_s
    self.date.strftime("%B %d, %Y")
  end

  def rating
    ratings = self.appearances.pluck(:rating)
    avg = (ratings.inject(0.0) { |sum, el| sum + el } / ratings.size).round(1)
    avg = avg.nan? ? 0 : avg
  end
end
