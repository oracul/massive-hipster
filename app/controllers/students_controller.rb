class StudentsController < ApplicationController

  before_filter :authenticate_user!

  before_action :set_student, only: [:show, :edit, :update, :destroy]
  # GET /students
  # GET /students.json
  def index
  #  @students = Student.where(user_id: current_user.id)
    @users = User.find(current_user.id)
    @students = Student.paginate(:page => params[:page], :per_page => 5).order('id DESC').where(user_id: current_user.id)
  #  @students = @users.students.where("created_at >= ?", Time.zone.now.beginning_of_day).order("id DESC")
  #  @students = @users.students.limit(2).order("id DESC")
  #  @students2 = Student.where(current_user.id)
    @interventions = Intervention.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  @fod = Student.all.where(user_id: current_user.id)
  @fod.find(params[:id], params[:user_id])

  end

  # GET /students/new
  def new
    @student = Student.new
    @interventions = Intervention.all
    @user = current_user.id
  end

  # GET /students/1/edit
  def edit
  @fod = Student.all.where(user_id: current_user.id)
  @fod.find(params[:id], params[:user_id])
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render action: 'show', status: :created, location: @student }
      else
        format.html { render action: 'new' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:firstname, :lastname, :user_id, :intervention_type, :comment, :behive, :behavior)
    end
end
