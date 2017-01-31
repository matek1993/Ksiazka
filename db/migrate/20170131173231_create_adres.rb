class CreateAdres < ActiveRecord::Migration
  def change
    create_table :adres do |t|
      t.integer :ID_adres
      t.string :miejscowosc1
      t.string :miejscowosc2

      t.timestamps
    end
  end
end
