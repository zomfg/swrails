class AddUserLangAndBlockMailing < ActiveRecord::Migration
  def self.up
    add_column :users, :block_mailing, :boolean
    add_column :users, :language, :string
  end

  def self.down
    remove_column :users, :block_mailing
    remove_column :users, :language
  end
end
