class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.integer :duration
      t.integer :task_group_id
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
