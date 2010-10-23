class CreateEpisodes < ActiveRecord::Migration
  def self.up
    create_table :episodes do |t|
      t.string :tite
      t.integer :season
      t.integer :number
      t.boolean :special
      t.date :air_date

      t.timestamps
    end
  end

  def self.down
    drop_table :episodes
  end
end
