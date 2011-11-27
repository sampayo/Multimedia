class CreateConfiguracions < ActiveRecord::Migration
  def change
    create_table :configuracions do |t|
      t.string :fodo
      t.references :usuarios      
      t.timestamps
    end
  end
end
