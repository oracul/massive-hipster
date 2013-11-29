class MstudentsController < ApplicationController
  before_action :set_mstudent, only: [:show, :edit, :update, :destroy]

  # GET /mstudents
  # GET /mstudents.json


  def index
    @mstudents = Mstudent.all
  end

  def aut
   @findstudents = Mstudent.all
  end

 
  # GET /mstudents/1
  # GET /mstudents/1.json
  def show
  end

  # GET /mstudents/new
  def new
    @mstudent = Mstudent.new
  end

  # GET /mstudents/1/edit
  def edit
  end

  # POST /mstudents
  # POST /mstudents.json
  def create
    @mstudent = Mstudent.new(mstudent_params)

    respond_to do |format|
      if @mstudent.save
        format.html { redirect_to @mstudent, notice: 'Mstudent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mstudent }
      else
        format.html { render action: 'new' }
        format.json { render json: @mstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mstudents/1
  # PATCH/PUT /mstudents/1.json
  def update
    respond_to do |format|
      if @mstudent.update(mstudent_params)
        format.html { redirect_to @mstudent, notice: 'Mstudent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mstudents/1
  # DELETE /mstudents/1.json
  def destroy
    @mstudent.destroy
    respond_to do |format|
      format.html { redirect_to mstudents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_mstudent
      @mstudent = Mstudent.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def mstudent_params
      params.require(:mstudent).permit(:fname, :lname)
    end
end
