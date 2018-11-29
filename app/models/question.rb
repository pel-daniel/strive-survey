class Question < ApplicationRecord
  belongs_to :survey

  validate :text, presence: true
end
