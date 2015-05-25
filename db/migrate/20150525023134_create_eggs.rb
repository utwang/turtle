class CreateEggs < ActiveRecord::Migration
  def change
    create_table :eggs do |t|
      t.references :turtle, index: true
      t.string :color

      t.timestamps null: false
    end
  end
end
