class Episode < ApplicationRecord
    has_many :appearances
    has_many :guest, through: :appearances

    def to_s
        "Episode #{self.number} - #{self.date.strftime("%B %d, %Y")}"
    end
end
