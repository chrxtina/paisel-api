class Vote < ActiveRecord::Base
  belongs_to :user, inverse_of: :votes
  belongs_to :thought, inverse_of: :votes
  validates_uniqueness_of :user_id, scope: :thought_id
end
