class Thought < ActiveRecord::Base
  belongs_to :user
  serialize :answers, Array
end
