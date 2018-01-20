class ProfessionalAccountController < ApplicationController
  def edit
    @professional = Professional.find(params[:id])
  end

  def update_account
    @professional = Professional.find(params[:id])
    if @professional.update(professional_account_params)
      sign_in(@professional, :bypass => true)
      redirect_to professional_account_path 
    end
  end

  def show
    @professional = Professional.find(params[:id])
  end

  # def past_detail
  #   @professional = Professional.find(params[:past_detail][:professional_id])
  #     @past_detail = @professional.past_detail.create(past_details_params)
  #     if @past_detail.save
  #       redirect_to professional_account_path
  #     end
  # end

  private
    # def past_details_params
    #   params.require(:past_detail).permit(:joined_on, :left_on, :work_profile, :about_workplace, :designation, :professional_id)
    # end
    def professional_account_params
      params.require(:professional_account).permit(:email, :password, :password_confirmation, :name, :business_email, :secondary_email, :address, :contact, :profile_photo)
    end
end
