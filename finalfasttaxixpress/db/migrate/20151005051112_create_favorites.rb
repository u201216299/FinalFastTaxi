class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.text :description
      t.belongs_to :customers, index: true
      t.belongs_to :districts, index: true
      t.text :reference
      
      t.timestamps null: false
    end
  end
end
