class Lesson < ApplicationRecord
  ## relações
    belongs_to :subject
    has_many :coursewares
  ## validações
    validates :description, :link_youtube, :schedule, presence: true

  ## funções

end
