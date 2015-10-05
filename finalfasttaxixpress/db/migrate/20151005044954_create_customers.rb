class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :name
      t.text :last_name
      t.text :age
      t.text :email
      t.integer :phone
      t.text :user
      t.text :password

      t.timestamps null: false
    end
  end
end
