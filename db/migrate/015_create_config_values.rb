class CreateConfigValues < ActiveRecord::Migration
  def self.up
    create_table :config_values do |t|
      t.string :name
      t.string :value

      t.timestamps
    end
  end

  def self.down
    drop_table :config_values
  end
end
