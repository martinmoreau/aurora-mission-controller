class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :body
      t.boolean :isStarted
      t.datetime :startTime
      t.boolean :isCompleted
      t.datetime :completionTime

      t.timestamps null: false
    end
  end
end
