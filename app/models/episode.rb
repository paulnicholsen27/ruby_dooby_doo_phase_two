class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def to_s
        "Episode #{self.number} - #{self.date_to_s}"
    end

    def date_to_s
        self.date.strftime("%B %d, %Y")
    end
end
