class Album < ActiveRecord::Base
    belongs_to :song
    belongs_to :musician
end 