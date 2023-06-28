class Course < ApplicationRecord
  belongs_to :instructor, class_name: 'User'
  has_many :lessons, dependent: :destroy

  validates :title, :description, presence: true
  validates :tags, :stars, presence: true

  def evaluate(star)
    self.stars[star - 1] += 1
    save!
  end
end
