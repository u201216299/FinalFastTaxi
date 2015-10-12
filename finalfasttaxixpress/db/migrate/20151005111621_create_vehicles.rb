class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.text :brand
      t.text :year
      t.text :color
      t.text :passengers
      t.belongs_to :Users, index: true  

      t.timestamps null: false
    end
  end
end
