class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.text :last_name
      t.text :age
      t.text :email
      t.integer :phone
      t.text :user
      t.text :password
      t.belongs_to :user_profiles, index: true

      t.timestamps null: false
    end
  end
end
