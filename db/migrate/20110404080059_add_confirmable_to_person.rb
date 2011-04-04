class AddConfirmableToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :confirmable, :boolean
  end

  def self.down
    remove_column :people, :confirmable
  end
end
