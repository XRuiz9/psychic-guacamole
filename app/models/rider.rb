class Rider < ApplicationRecord
	has_many :rides
	has_many :rollercoasters, through: :rides
	validates :name, presence: true
end
