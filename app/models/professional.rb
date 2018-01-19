class Professional < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :confirmable

    mount_uploader :profile_photo, ImageUploader
    has_many :pro_skills, dependent: :destroy
    
end
