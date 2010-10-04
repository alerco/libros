class CreateModelo1s < ActiveRecord::Migration
  def self.up
    create_table :modelo1s do |t|
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end

  def self.down
    drop_table :modelo1s
  end
end
