class UsersController < ApplicationController

  def index
    blocks = Blocklist.all.select('ListAgentEmail')
    @users = User.where('ListAgentEmail NOT IN (?)', blocks)
  end

  def import
    User.import(params[:file])
    redirect_to root_url, notice: "import success"
  end

  def create
  end
end

