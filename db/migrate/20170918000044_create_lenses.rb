class CreateLenses < ActiveRecord::Migration[5.1]
  def change
    create_table :lenses do |t|
      t.string :lens_id, index: true, unique: true
      t.string :image_url
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
