class CreateMusicas < ActiveRecord::Migration[5.2]
  def change
    create_table :musicas do |t|
      t.string :titulo

      t.timestamps
    end
  end
end
