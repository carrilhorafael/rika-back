class Lesson < ApplicationRecord
  belongs_to :course
  has_many :attachments, class_name: "LessonAttachment", dependent: :destroy

  validates :title, presence: true
  validate :validate_contents

  def validate_contents
    return if contents.blank?
    contents.each do |content|
      case content["type"]
      when 'text'
        errors.add(:content_text_data, 'Conteudo de texto não pode ficar em branco') if content["data"].blank?
      when 'file'
        errors.add(:content_file_data, 'Arquivo não vinculado a aula') unless attachments.find_by(id: content["data"])
      end
    end
  end
end
