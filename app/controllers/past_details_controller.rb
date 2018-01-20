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
  end

  def create
    @past_detail = PastDetail.new(past_detail_params)

    respond_to do |format|
      if @past_detail.save
        format.html { redirect_to @past_detail, notice: 'Past Detail was successfully created.' }
        format.json { render :show, status: :created, location: @past_detail }
      else
        format.html { render :new }
        format.json { render json: @past_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @past_detail.update(past_detail_params)
        format.html { redirect_to @past_detail, notice: 'Past Detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @past_detail }
      else
        format.html { render :edit }
        format.json { render json: @past_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @past_detail.destroy
    respond_to do |format|
      format.html { redirect_to past_details_url, notice: 'Past Detaill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_past_detail
      @past_detail = PastDetail.find(params[:id])
    end

   
    def past_detail_params
      params.require(:past_detail).permit(:joined_on, :left_on, :work_profile, :about_workplace, :designation)
    end
end