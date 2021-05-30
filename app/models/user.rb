class User < ApplicationRecord
    has_secure_password
    ## relações
        has_many :assignments
        has_many :lesson_feedbacks
        has_many :assignment_feedbacks
        has_many :lessons
        

    ## validações
        validates :name, :password_confirmation, :email, presence: true
        VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
        validates :email, uniqueness: {case_sensitive:true}, format: {with: VALID_EMAIL_FORMAT}
        enum role:{
            "administrador": 1,
            "instrutor": 2,
            "estudante": 3
        }
    ## funções
end
