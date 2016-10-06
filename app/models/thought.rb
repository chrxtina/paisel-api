class Thought < ActiveRecord::Base
  belongs_to :user
  has_many :votes, dependent: :destroy
  serialize :answers, Array
end
