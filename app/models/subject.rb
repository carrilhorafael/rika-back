class Subject < ApplicationRecord
    ## relações
        has_many :lessons
    ## validações
        validates :name, presence: true
    ## funções
end
