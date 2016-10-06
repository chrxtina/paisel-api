class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :thought, index: true, foreign_key: true
      t.string :choice

      t.timestamps null: false
    end
  end
end
