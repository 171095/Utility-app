class PastDetailsController < ApplicationController
   before_action :set_past_detail, only: [:show, :edit, :update, :destroy]

  def index
    @past_details = PastDetail.all
  end

  def show
  end

  def new
    @past_detail = PastDetail.new
  end

  def edit
      respond_to do |format|
        format.js
        format.html
    end
  end

  def create
    @past_details = PastDetail.all
    @past_detail = PastDetail.new(past_detail_params)
    
    respond_to do |format|
      if @past_detail.save
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
    @past_detail.update_attributes(past_detail_params)

    respond_to do |format|
      if @past_detail.update(past_detail_params)
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
    @past_detail = PastDetail.find(params[:id])
    @past_detail.destroy
    # redirect_to professional_account_url

    respond_to do |format|
      format.html { redirect_to professional_account_url }
      format.js
    end
  end

  private
    
    def set_past_detail
      @past_detail = PastDetail.find(params[:id])
    end

   
    def past_detail_params
      params.require(:past_detail).permit(:joined_on, :left_on, :work_profile, :about_workplace, :designation, :professional_id)
    end
end