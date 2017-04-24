class Createblocklist < ActiveRecord::Migration[5.0]
  def change
    create_table :blocklists do |t|
          t.string :ListAgentEmail, unique: true
        end
  end
end
