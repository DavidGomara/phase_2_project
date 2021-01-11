class Artwork < ActiveRecord::Base
    belongs_to :painter
    validates :img, presence: true
end 