class Mstudent < ActiveRecord::Base
	def fullname
	[fname, lname].join(" ")
	end
end
