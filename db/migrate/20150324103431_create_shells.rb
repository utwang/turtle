class CreateShells < ActiveRecord::Migration
  def change
    create_table :shells do |t|
      t.references :turtle, index: true
      t.integer :age
      t.string :color

      t.timestamps
    end
  end
end
