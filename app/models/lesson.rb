class Lesson < ApplicationRecord
  ## relações
    belongs_to :subject
    has_many :coursewares
    has_one :homework
    has_many :lesson_feedbacks
    belongs_to :user

  ## validações
    validates :description, :link_youtube, presence: true
    validate :user_cannot_be_student

  ## funções
  def user_cannot_be_student
    if user.student?
        errors.add :is_student, "Esse usuário não pode dar aula"
    end
  end

end
