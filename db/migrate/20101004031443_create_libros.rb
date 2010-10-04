class CreateLibros < ActiveRecord::Migration
  def self.up
    create_table :libros do |t|
      t.string :titulo
      t.text :descripcion
      t.string :categoria

      t.timestamps
    end
  end

  def self.down
    drop_table :libros
  end
end
