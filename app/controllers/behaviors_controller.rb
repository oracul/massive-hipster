class BehaviorsController < ApplicationController
  before_action :set_behavior, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /behaviors
  # GET /behaviors.json
  def index
    @user = current_user.id
    @behaviors = Behavior.where(user_id: current_user.id)
  end

  # GET /behaviors/1
  # GET /behaviors/1.json
  def show
  @fod = Behavior.all.where(user_id: current_user.id)
  @fod.find(params[:id], params[:user_id])
  end

  # GET /behaviors/new
  def new
    @user = current_user.id
    @behavior = Behavior.new
  end

  # GET /behaviors/1/edit
  def edit
    @fod = Behavior.all.where(user_id: current_user.id)
    @fod.find(params[:id], params[:user_id])
  end

  # POST /behaviors
  # POST /behaviors.json
  def create
    @behavior = Behavior.new(behavior_params)

    respond_to do |format|
      if @behavior.save
        format.html { redirect_to @behavior, notice: 'Behavior was successfully created.' }
        format.json { render action: 'show', status: :created, location: @behavior }
      else
        format.html { render action: 'new' }
        format.json { render json: @behavior.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /behaviors/1
  # PATCH/PUT /behaviors/1.json
  def update
    respond_to do |format|
      if @behavior.update(behavior_params)
        format.html { redirect_to @behavior, notice: 'Behavior was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @behavior.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /behaviors/1
  # DELETE /behaviors/1.json
  def destroy
    @behavior.destroy
    respond_to do |format|
      format.html { redirect_to behaviors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_behavior
      @behavior = Behavior.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def behavior_params
      params.require(:behavior).permit(:behavior, :intervention, :consequence, :user_id)
    end
end
