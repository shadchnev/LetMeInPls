class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.string :login, :null => false
      t.string :password, :null => false
      t.integer :site_id, :null => false
      t.integer :up, :null => false, :default => 0
      t.integer :down, :null => false, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
