class MultiChoiceOption < ActiveRecord::Base
  belongs_to :multi_choice_style
  belongs_to :answer
end
