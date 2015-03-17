class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :name
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
