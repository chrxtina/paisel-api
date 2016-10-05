class ThoughtSerializer < ActiveModel::Serializer
  attributes :id, :content, :question, :answers
  has_one :user
end
