class StaticPagesController < ApplicationController
	  before_filter :authenticate_user!
	def customize
	end

	def report
  #  @students = Student.where(user_id: current_user.id)
    @users = User.find(current_user.id)
    @students = @users.students
    @students2 = @students.order("count_all desc").group('firstname').count
    @behive = @students.order("count_all desc").group('behive').count

    # @students = @users.students.order("count_all desc").count(group: :firstname)
  # @students2 = @students.count(:group => :firstname)
  #	@students2 = @students.where("firstname = :firstname")
  #  @students = @users.students.where("created_at >= ?", Time.zone.now.beginning_of_day).order("id DESC")
 
    @interventions = Intervention.all
	end
end
