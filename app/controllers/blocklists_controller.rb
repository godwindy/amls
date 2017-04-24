class BlocklistsController < ApplicationController
  def index
    @blocklists = Blocklist.all
  end

  def create    
        if(params[:toadd]=="1")
        else
           Blocklist.delete_all()
        end

        str = params[:blocktext].split(",").each do | entry |
          chkmail = Blocklist.where(ListAgentEmail: entry)
          if chkmail.count < 1
              @blocklist = Blocklist.new()
              @blocklist.ListAgentEmail = entry
              @blocklist.save
          end
        end   
        if(params[:toadd]=="1")
           redirect_to '/', notice: 'block updated!!'
        else
           redirect_to '/blocklists', notice: 'block updated!!'
        end
  end
end
