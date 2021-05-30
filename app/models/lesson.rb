class Lesson < ApplicationRecord
  ## relações
    belongs_to :subject
    has_many :coursewares
    has_one :homework
    has_many :lesson_feedbacks

  ## validações
    validates :description, :link_youtube, presence: true

  ## funções

end
