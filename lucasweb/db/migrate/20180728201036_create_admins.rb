class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.text :inicial
      t.text :homepage
      t.text :about
      t.text :contato

      t.timestamps
    end

    if !Admin.any?
      Admin.create(inicial: '<h1>Bem Vindo</h1>', homepage: '', about: '', contato: '')
    end
  end
end
