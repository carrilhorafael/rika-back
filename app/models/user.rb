class User < ApplicationRecord
  has_secure_password

  has_many :instructed_courses, foreign_key: :instructor_id, class_name: 'Course', dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, :password_confirmation, presence: true, length: { minimum: 8 }, if: :password
end
