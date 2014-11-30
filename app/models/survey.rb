class Survey < ActiveRecord::Base
  validates :name, presence: true

  has_many :questions
  has_many :responses
  belongs_to :user

  def response_count
    responses.count
  end
end
