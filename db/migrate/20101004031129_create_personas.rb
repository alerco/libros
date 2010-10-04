class CreatePersonas < ActiveRecord::Migration
  def self.up
    create_table :personas do |t|
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end

  def self.down
    drop_table :personas
  end
end
