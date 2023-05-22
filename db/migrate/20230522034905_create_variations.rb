class CreateVariations < ActiveRecord::Migration[6.1]
  def change
    create_table :variations do |t|

      t.timestamps
    end
  end
end
