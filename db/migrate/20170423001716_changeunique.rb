class Changeunique < ActiveRecord::Migration[5.0]
  def change
     add_index :users, :ListAgentEmail, :unique => true
  end
end
