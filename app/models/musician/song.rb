class Song < ActiveRecord::Base
    has_many :albums
    has_many :musicians, through: :albums
end 