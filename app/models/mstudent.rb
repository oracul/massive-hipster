class Mstudent < ActiveRecord::Base
	def fullname
	[fname, lname].join(" ")
	end
	belongs_to :student
	belongs_to :user
end
