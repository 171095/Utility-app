class Skill < ApplicationRecord
    belongs_to :pro_skill, optional: true
end
