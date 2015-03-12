class Appointment < ActiveRecord::Base
	validate :date_in_past
	validates :date_of_visit, :presence => true
	validates :customer, :presence => true
	validates :reason, :presence => true
	validates :pet, :presence => true

	def date_in_past
		errors.add(:date_of_visit, "Date must not be in the past") if !date_of_visit.blank? && date_of_visit < Date.today
	end
end
