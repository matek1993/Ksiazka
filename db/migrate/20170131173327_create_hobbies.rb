class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|
      t.integer :ID_hobby
      t.string :nazwa

      t.timestamps
    end
  end
end
