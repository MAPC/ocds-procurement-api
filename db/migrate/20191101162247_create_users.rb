class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :auth_token
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :neighborhood_id
      t.string :phone_number

      t.timestamps
    end
  end
end
