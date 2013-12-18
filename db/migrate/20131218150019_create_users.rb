class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :age
      t.string :blood_type
      t.string :email
      t.string :first_name, null: false
      t.string :height
      t.string :home_address
      t.string :last_name, null: false
      t.string :phone_number

      t.timestamps
    end
  end
end
