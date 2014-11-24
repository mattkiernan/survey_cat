class Question < ActiveRecord::Base
  validates :survey_id, presence: true
  validates :style_id, presence: true
  validates :style_type, presence: true

  belongs_to :survey
  belongs_to :style, polymorphic: true, dependent: :destroy
  has_many :answers

  accepts_nested_attributes_for :answers

  def options
    if style == MultiChoiceStyle
      style.multi_choice_options.each do |option|
        option.body
      end
    else
     ""
    end
  end
end
