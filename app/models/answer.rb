class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :survey_response

  validates :text, presence: true
end
