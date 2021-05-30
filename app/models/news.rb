class News < ApplicationRecord
  belongs_to :user
  validates :title, :content, presence: true
  validate :author_must_be_admin  
end
