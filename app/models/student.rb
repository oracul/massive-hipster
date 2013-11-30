class Student < ActiveRecord::Base
	belongs_to :user
	has_many :interventions
	has_many :mstudents
	has_many :behaviors
end
