class SurveyResponse < ApplicationRecord
  belongs_to :survey
  has_many :answers, dependent: :destroy
  has_many :questions, through: :survey

  validates :email, presence: true
end
