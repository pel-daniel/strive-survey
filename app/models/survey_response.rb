class SurveyResponse < ApplicationRecord
  belongs_to :survey

  validates :email, presence: true
end
