class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :email
      t.string :task
      t.datetime :task_time
      t.datetime :task_date

      t.timestamps
    end
  end
end
