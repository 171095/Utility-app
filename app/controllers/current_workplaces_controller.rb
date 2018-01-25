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
    @current_workplaces = CurrentWorkplace.all
    @current_workplace = CurrentWorkplace.new(current_workplace_params)
    
    respond_to do |format|
      if @current_workplace.save
        format.html { redirect_to professional_account_path, notice: 'Past Detail was successfully created.' }
        format.json { render :show, status: :created, location: @professional_account }
        format.js {}
      else
        format.html { render :new }
        format.json { render json: @professional_account.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @current_workplace.update_attributes(current_workplace_params)

    respond_to do |format|
      if @current_workplace.update(current_workplace_params)
        format.html { redirect_to professional_account_path, notice: 'Past Detail was successfully updated.' }
        # format.json { render :show, status: :ok, location: @professional_account }
        format.js
      else
        format.html { render :edit }
        # format.json { render json: @professional_account.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @current_workplace.destroy
    respond_to do |format|
      format.html { redirect_to professional_account_url, notice: 'Current Workplacel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_current_workplace
      @current_workplace = CurrentWorkplace.find(params[:id])
    end

   
    def current_workplace_params
      params.require(:current_workplace).permit(:joined_on,:work_profile, :about_workplace, :designation, :professional_id)
    end
end
