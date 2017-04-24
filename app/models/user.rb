class User < ApplicationRecord 

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
       row_hash = row.to_hash
       chkmail = User.where(ListAgentEmail: row_hash["ListAgentEmail"])
 
       if chkmail.count != 1 && !row_hash["ListAgentEmail"].blank? 
         User.create! row_hash
       end
    end
  end
end

