class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :seudonimo
      t.text :biografia
      t.string :web
      t.string :lenguaje
      t.string :foto
      t.string :zonah
      t.date :fecha

      t.timestamps
    end
  end
end
