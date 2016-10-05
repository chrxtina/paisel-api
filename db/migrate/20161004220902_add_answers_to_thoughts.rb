class AddAnswersToThoughts < ActiveRecord::Migration
  def change
    add_column :thoughts, :answers, :text
  end
end
