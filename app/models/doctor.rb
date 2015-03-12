class Doctor < ActiveRecord::Base
	validates :name, length: { maximum: 35}
	validates :zip, length: { maximum: 5}
	validates :years_in_practice, inclusion: { in: 1..100 }
end
