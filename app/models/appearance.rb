class Appearance < ApplicationRecord
    validates :rating, presence: {message: "Rating must be between 1 and 5"}, :inclusion => 1..5 
    validates :guest, uniqueness: true 
    
    belongs_to :guest
    belongs_to :episode
end
