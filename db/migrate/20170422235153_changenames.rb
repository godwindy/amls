class Changenames < ActiveRecord::Migration[5.0]
  def change
      rename_column :users, :firstname, :ListAgentFirstName
      rename_column :users, :lastname, :ListAgentLastName
      rename_column :users, :email, :ListAgentEmail
      rename_column :users, :cellphone, :ListAgentCellPhone
      rename_column :users, :officename, :ListOfficeName
      rename_column :users, :country, :CountyOrParish
  end
end
