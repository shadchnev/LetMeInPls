class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.string :login
      t.string :password
      t.integer :site_id
      t.integer :up
      t.integer :down

      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
