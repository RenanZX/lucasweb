class CreateWebseries < ActiveRecord::Migration[5.2]
  def change
    create_table :webseries do |t|
      t.string :titulo
      t.text :playlist

      t.timestamps
    end
  end
end
