class Appearance < ApplicationRecord

    belongs_to :guest, optional: :true
    belongs_to :episode, optional: :true

    # validates :rating, inclusion:

end
