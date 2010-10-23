class RenameTitsFieldForEpisodes < ActiveRecord::Migration
  def self.up
	rename_column :episodes, :tite, :title
  end

  def self.down
  end
end
