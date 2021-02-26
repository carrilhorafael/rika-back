class AssignmentFeedback < ApplicationRecord
  ## relações
  belongs_to :assignment

  ## validações
    validates :content, :grade, presence: true
    validates :grade, numericality:{greater_than_or_equal_to: 0, less_than_or_equal_to: 10}
  ## função
end
