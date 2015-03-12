class Prescription < ActiveRecord::Base
	validates :pet_name, :presence => true, length: {maximum: 35}
	validates :age, :presence => true
	validates :breed, :presence => true, length: {maximum: 35}
	validates :date_of_last_visit, :presence => true
	validates :weight, :presence => true
	validate :date_in_future


	def date_in_future
		errors.add(:date_of_last_visit, "Date must be in the past") if !date_of_last_visit.blank? && date_of_last_visit > Date.today
	end

end
