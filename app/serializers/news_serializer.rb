class NewsSerializer < ActiveModel::Serializer
  attributes :id, :content, :title
  has_one :user
end
