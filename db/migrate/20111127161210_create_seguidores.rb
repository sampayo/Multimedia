class CreateSeguidores < ActiveRecord::Migration
  def change
    create_table :seguidores do |t|
      t.references :usuarios
      t.references :seguidor
      t.timestamps
    end
  end
end
