class CreatePoemas < ActiveRecord::Migration[5.2]
  def change
    create_table :poemas do |t|
      t.string :titulo
      t.text :corpo

      t.timestamps
    end
  end
end
