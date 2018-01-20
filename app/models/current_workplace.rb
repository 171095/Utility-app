class CurrentWorkplace < ApplicationRecord
    belongs_to :professional, optional: true
end
