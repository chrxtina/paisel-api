class AddQuestionToThoughts < ActiveRecord::Migration
  def change
    add_column :thoughts, :question, :text
  end
end
