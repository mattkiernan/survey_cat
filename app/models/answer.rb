class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :response
  belongs_to :style, polymorphic: true
  has_many :multi_choice_options

  accepts_nested_attributes_for :multi_choice_options

  def display
    if self.body.nil?
      multi_choice_option = MultiChoiceOption.find(self.multi_choice_option_id)
      multi_choice_option.body
    else
      body
    end
  end
end
