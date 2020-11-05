class Appearance < ApplicationRecord

    belongs_to :episode
    belongs_to :guest

    validates :numeric_rating, numericality: {greater_than: 0}
    validates :numeric_rating, numericality: {less_than: 6}
    ## wondering if theres a different way to validates a number 
    ##range of 1-5

    validates :guest_id, uniqueness: true
    
end
