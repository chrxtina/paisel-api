class VoteSerializer < ActiveModel::Serializer
  attributes :id, :choice
  has_one :user
  has_one :thought
end
