class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :contact
      t.string :dob
      t.string :gender
      t.string :address

      t.timestamps
    end
  end
end
