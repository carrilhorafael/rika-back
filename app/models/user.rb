class User < ApplicationRecord
    has_secure_password
    ## relações
        

    ## validações
        validates :name, :password_confirmation, :email, presence: true
        VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
        validates :email, uniqueness: {case_sensitive:true}, format: {with: VALID_EMAIL_FORMAT}
    
    ## funções
end
