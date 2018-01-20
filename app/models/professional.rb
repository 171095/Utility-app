class Professional < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :confirmable

    mount_uploader :profile_photo, ImageUploader
    has_many :pro_skills, dependent: :destroy
    has_many :past_details, dependent: :destroy
    has_one :current_workplace, dependent: :destroy
    geocoded_by :address   
    after_validation :geocode 
    
end
