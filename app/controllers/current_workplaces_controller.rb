class CurrentWorkplacesController < ApplicationController
 before_action :set_current_workplace, only: [:show, :edit, :update, :destroy]


  def index
    @current_workplaces = CurrentWorkplace.all
  end

  def show
  end

  def new
    @current_workplace = CurrentWorkplace.new
  end

  def edit
  end

  def create
    @current_workplace = CurrentWorkplace.new(current_workplace_params)

    respond_to do |format|
      if @current_workplace.save
        format.html { redirect_to @current_workplace, notice: 'Current Workplace was successfully created.' }
        format.json { render :show, status: :created, location: @current_workplace }
      else
        format.html { render :new }
        format.json { render json: @current_workplace.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @current_workplace.update(current_workplace_params)
        format.html { redirect_to @current_workplace, notice: 'Current Workplace was successfully updated.' }
        format.json { render :show, status: :ok, location: @current_workplace }
      else
        format.html { render :edit }
        format.json { render json: @current_workplace.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @current_workplace.destroy
    respond_to do |format|
      format.html { redirect_to current_workplaces_url, notice: 'Current Workplacel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_current_workplace
      @current_workplace = CurrentWorkplace.find(params[:id])
    end

   
    def current_workplace_params
      params.require(:current_workplace).permit(:joined_on,:work_profile, :about_workplace, :designation)
    end
end
