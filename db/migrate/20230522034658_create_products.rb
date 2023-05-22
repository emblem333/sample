class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :Variation
      t.string :Image

      t.timestamps
    end
  end
end
