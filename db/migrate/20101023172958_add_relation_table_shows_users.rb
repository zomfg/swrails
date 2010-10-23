class AddRelationTableShowsUsers < ActiveRecord::Migration
  def self.up
    create_table :shows_users do |t|
      t.integer :show_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :shows_users
  end
end
