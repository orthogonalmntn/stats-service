class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :type, null: false
      t.datetime :occurred_at

      t.timestamps
    end
  end
end
