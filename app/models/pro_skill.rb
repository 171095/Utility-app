class ProSkill < ApplicationRecord
    belongs_to :professional, optional: true
    has_many :skills, dependent: :destroy
end
