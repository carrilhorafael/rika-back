class News < ApplicationRecord
  belongs_to :user
  validates :title, :content, presence: true
  validate :author_must_be_admin

  def author_must_be_admin
    unless user.administrador?
      errors.add :unauthorized, "Você não tem permissão para criar uma notícia"
    end  
  end
end
