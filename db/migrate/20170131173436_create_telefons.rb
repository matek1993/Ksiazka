class CreateTelefons < ActiveRecord::Migration
  def change
    create_table :telefons do |t|
      t.integer :ID_telefon
      t.string :numer

      t.timestamps
    end
  end
end
