class AddShowRefToEpisode < ActiveRecord::Migration
  def self.up
    add_column :episodes, :show_id, :integer
  end

  def self.down
    remove_column(:episodes, :show_id)
  end
end
