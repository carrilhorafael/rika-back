class Homework < ApplicationRecord
  ## relaçoes
    belongs_to :lesson
  ## validações
    validates :description, presence: true
  ## funções
end
