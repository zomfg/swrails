class KickKeyBecauseFuckYou < ActiveRecord::Migration
  def self.up
    remove_column(:shows_users, :id)
#    change_table :shows_users do
#
#    end
  end

  def self.down
  end
end
