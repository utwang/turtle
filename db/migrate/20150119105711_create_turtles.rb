class CreateTurtles < ActiveRecord::Migration
  def change
    create_table :turtles do |t|
      t.string :name
      t.string :aasm_state

      t.timestamps
    end
  end
end
