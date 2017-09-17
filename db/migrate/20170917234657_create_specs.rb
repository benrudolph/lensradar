class CreateSpecs < ActiveRecord::Migration[5.1]
  def change
    create_table :specs do |t|
      t.string :lens_id, index: true
      t.string :label
      t.string :value
      t.string :category

      t.timestamps
    end
  end
end
