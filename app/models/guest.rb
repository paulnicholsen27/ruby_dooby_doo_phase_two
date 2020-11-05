class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def rating
        ratings = self.appearances.pluck(:rating)
        avg = (ratings.inject(0.0) { |sum, el| sum + el } / ratings.size).round(1)
        avg = avg.nan? ? 0 : avg
    end

    def self.order_by_rating
        Guest.select('guests.id, guests.name, avg(appearances.rating)')
       .left_outer_joins(:appearances)
       .group('guests.id')
       .order('avg(appearances.rating) desc')
    end
end
