class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.references :assignee, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
