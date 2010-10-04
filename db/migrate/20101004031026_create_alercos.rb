class CreateAlercos < ActiveRecord::Migration
  def self.up
    create_table :alercos do |t|
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end

  def self.down
    drop_table :alercos
  end
end
