class Appearance < ApplicationRecord

    validates :guest, :episode, :rating, presence:true
    validates :rating, numericality: {greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: 5}
    validates :guest, uniqueness: {case_sensitive:false}

    belongs_to :guest
    belongs_to :episode

end
