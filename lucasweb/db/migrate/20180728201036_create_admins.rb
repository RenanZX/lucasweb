class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.text :inicial
      t.text :homepage
      t.text :about
      t.text :contato

      t.timestamps
    end
  end
end
