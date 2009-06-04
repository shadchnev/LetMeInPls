class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.string :url
      t.string :regex
      t.timestamps
    end
  end

  def self.down
    drop_table :sites
  end
end
