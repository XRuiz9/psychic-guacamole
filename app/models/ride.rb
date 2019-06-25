class Ride < ApplicationRecord
	belongs_to :rider
	belongs_to :rollercoaster
end
