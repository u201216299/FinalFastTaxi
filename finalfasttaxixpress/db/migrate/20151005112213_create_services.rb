class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.belongs_to :Customer, index: true
      t.belongs_to :districts, index: true
      t.text :reference_origin
      t.belongs_to :districts, index: true
      t.text :reference_destination
      t.belongs_to :Users, index: true

      t.timestamps null: false
    end
  end
end
