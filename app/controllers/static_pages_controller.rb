class StaticPagesController < ApplicationController
	  before_filter :authenticate_user!
	def customize
	end

	def report
  #  @students = Student.where(user_id: current_user.id
    @mstudents = Mstudent.all.where(user_id: current_user.id)
    @users = User.find(current_user.id)
    @students = @users.students
    @students2 = @students.where("created_at >= ?", 1.week.ago.utc).order("count_all desc").group('firstname').count.take(10)
    @students3 = @students.where("created_at >= ?", 1.month.ago.utc).order("count_all desc").group('firstname').count.take(10)
    @behive = @students.where("created_at >= ?", 1.week.ago.utc).order("count_all desc").group('behive').count.take(10)
    @behive2 = @students.where("created_at >= ?", 1.month.ago.utc).order("count_all desc").group('behive').count.take(10)
    @studentlist = @users.students.group(:firstname)

    # @students = @users.students.order("count_all desc").count(group: :firstname)
  # @students2 = @students.count(:group => :firstname)
  #	@students2 = @students.where("firstname = :firstname")
  #  @students = @users.students.where("created_at >= ?", Time.zone.now.beginning_of_day).order("id DESC")
 
    @interventions = Intervention.all

   # @EVENT_COLORS = "%06x" % (rand * 0xffffff)
   @event_colors = "red", "green", "blue"

	end

      def restrict_access
      redirect_to root_path, :alert => "Access denied"
      end


  def allusers
    if current_user.id != 1
     redirect_to root_path 
    else 
      @users = User.all
    end
  end




end
