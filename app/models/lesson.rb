class Lesson < ApplicationRecord
  ## relações
    belongs_to :subject
  ## validações
    validates :name, :description, :link_youtube, :schedule, presence: true
    
  ## funções

end
