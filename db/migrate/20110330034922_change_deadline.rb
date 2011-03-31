class ChangeDeadline < ActiveRecord::Migration
  def self.up
     change_column(:projects, :deadline, :date)
  end

  def self.down
    change_column(:projects, :deadline, :datetime)
  end
end
