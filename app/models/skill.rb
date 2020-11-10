class Skill < ApplicationRecord
  belongs_to :user

  validates :category, presence: true
  validates :experience, presence: true
  validates :seeking, presence: true
end
