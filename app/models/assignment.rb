class Assignment < ApplicationRecord
  ## Relações
    belongs_to :user
    belongs_to :homework
    has_many :assignment_feedbacks
  ## Validações
    validates :gitlab_link, presence: true
  ## Funções

end
