class Appearance < ApplicationRecord

    belongs_to :episode
    belongs_to :guest

    validates :rating, presence: true, inclusion: {in: (1..5), message: "is not between 1 and 5"}
    validates_uniqueness_of :guest_id, scope: :episode_id

end
