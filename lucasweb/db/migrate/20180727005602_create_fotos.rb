class CreateFotos < ActiveRecord::Migration[5.2]
  def change
    create_table :fotos do |t|

      t.timestamps
    end
  end
end
