class Homework < ApplicationRecord
  ## relaçoes
    belongs_to :lesson
  ## validações
    validates :description, presence: true
    validate :deadline_valid, on: :create
  ## funções
    def deadline_valid
      errors.add :deadline, "Você só pode marcar a entrega da tarefa após a data da aula" if deadline < Date.today
    end
  
end
