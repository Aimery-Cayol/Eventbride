class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :description
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
