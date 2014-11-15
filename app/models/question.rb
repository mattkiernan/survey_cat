class Question < ActiveRecord::Base
  validates :survey_id, presence: true
  validates :style_id, presence: true
  validates :style_type, presence: true

  belongs_to :survey
  belongs_to :style, polymorphic: true, dependent: :destroy
end
