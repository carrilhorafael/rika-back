class Lesson < ApplicationRecord
  ## relações
    belongs_to :subject
    has_many :coursewares
    has_one :homework
  ## validações
    validates :description, :link_youtube, :schedule, presence: true

  ## funções

end
