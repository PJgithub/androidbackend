class CreateAccessablemarkers < ActiveRecord::Migration
  def change
    create_table :accessablemarkers do |t|
      t.integer :markerid
      t.integer :accesorid

      t.timestamps
    end
  end
end
