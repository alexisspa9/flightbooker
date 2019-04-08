class Airport < ApplicationRecord
	validates :code, presence: true, length: { maximum: 50 }
end
