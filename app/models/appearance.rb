class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :rating, :inclusion => { :in => 1..5,  
        :message => " should be between 0 and 5, you gave us %{value}."}

    #validate :unique_appearance

    def unique_appearance
        #Add a validation to Appearance to ensure that each 
        #Guest can only appear once on the same Episode.
        if Appearance.find(guest_id, episode_id)
            errors.add(:guest_id, " was already on this episode.")
        end       
    end

end
