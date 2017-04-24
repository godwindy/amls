class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :cellphone
      t.string :officename
      t.string :country

      t.timestamps
    end
  end
end
