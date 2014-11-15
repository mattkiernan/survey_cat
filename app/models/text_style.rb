class TextStyle < ActiveRecord::Base
  validates :body, presence: true

  has_one :question, as: :style
end
