class Assignment < ApplicationRecord
  ## Relações
    belongs_to :user
    belongs_to :homework
  ## Validações
    validates :gitlab_link, presence: true
  ## Funções

end
