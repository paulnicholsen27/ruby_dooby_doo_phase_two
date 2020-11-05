class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :rating, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
    validates :guest_id, uniqueness: true #this is not the correct one, this just dont let you to select the 
                                            #same actor again
end
