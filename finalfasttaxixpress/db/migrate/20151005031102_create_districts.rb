class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
