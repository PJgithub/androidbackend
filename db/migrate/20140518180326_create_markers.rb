class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.string :name
      t.text :description
      t.string :locationx
      t.string :locationy
      t.integer :ownerid

      t.timestamps
    end
  end
end
