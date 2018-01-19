class ProfessionalAccountController < ApplicationController
  def edit
    @professional = Professional.find(params[:id])
  end

  def update_account
    @professional = Professional.find(params[:id])
    if @professional.update(professional_account_params)
      sign_in(@professional, :bypass => true)
      redirect_to root_path 
    end
  end

  private
    def professional_account_params
      params.require(:professional_account).permit(:email, :password, :password_confirmation, :name, :business_email, :secondary_email, :address, :contact, :profile_photo)
    end
end
