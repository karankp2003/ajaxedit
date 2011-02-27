class CreateOceans < ActiveRecord::Migration
  def self.up
    create_table :oceans do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :oceans
  end
end
