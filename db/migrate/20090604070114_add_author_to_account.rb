class AddAuthorToAccount < ActiveRecord::Migration
  def self.up
    add_column :accounts, :author, :string
  end

  def self.down
    remove_column :accounts, :author
  end
end
