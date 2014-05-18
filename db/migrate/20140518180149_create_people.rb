class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.text :picture
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
