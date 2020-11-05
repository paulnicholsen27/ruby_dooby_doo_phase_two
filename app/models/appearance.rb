class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode 
#     validates :guest, presence: true
#     validates :episode, presence: true 
    validates :rating, inclusion: 1..5
end 
