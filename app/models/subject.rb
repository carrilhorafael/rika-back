class Subject < ApplicationRecord
    ## relações
        has_many :lessons
    
    ## validações
        validates :name, presence: true
        validate :user_cannot_be_student
    ## funções
        def user_cannot_be_student
            if user.student?
                errors.add :is_student, "Esse usuário não pode dar aula"
            end
        end

end
