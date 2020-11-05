class Episode < ApplicationRecord

    has_many :appearances
    has_many :guests, through: :appearances 

    def average_rating
        ratings = Appearance.where(episode_id: self.id).pluck(:rating)
        sum = ratings.sum do |s|
            s 
        end.to_f
        (sum / ratings.size.to_f).round(2)
    end

end
