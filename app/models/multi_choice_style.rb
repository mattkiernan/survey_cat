class MultiChoiceStyle < ActiveRecord::Base
  has_one :question, as: :style
  has_many :multi_choice_options
end
