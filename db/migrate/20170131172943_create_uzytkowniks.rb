class CreateUzytkowniks < ActiveRecord::Migration
  def change
    create_table :uzytkowniks do |t|
      t.string :imie
      t.string :nazwisko
      t.integer :ID_Telefon
      t.integer :ID_Adres
      t.integer :ID_Hobby

      t.timestamps
    end
  end
end
