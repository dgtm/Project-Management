class ChangeDeadlineInProject < ActiveRecord::Migration
  def self.up
    change_column(:projects, :deadline, :time)
  end

  def self.down
    change_column(:projects, :deadline, :date)
  end
end
