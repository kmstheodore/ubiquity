class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :desc
      t.datetime :strike
      t.boolean :repeat
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
