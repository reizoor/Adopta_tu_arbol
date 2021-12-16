class CreateTrees < ActiveRecord::Migration[6.0]
  def change
    create_table :trees do |t|
      t.string :owner
      t.string :tree_type
      t.string :code
      t.string :password
      t.float :latitud, precision: 15, scale: 10
      t.float :longitud, precision: 15, scale: 10
      t.text :features

      t.timestamps
    end
  end
end
