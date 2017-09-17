class CreateLens < ActiveRecord::Migration[5.1]
  def change
    create_table :lens do |t|
      t.string :lens_id, index: true
      t.string :image_url
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
