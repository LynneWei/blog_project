class SessionsController < ApplicationController
  def new
    @session = User.new
  end

  def create
    @ses = User.find_by name: params[:name]
    logger.info '-----------------------------------------'
    logger.info @ses.inspect
    if @ses
      session[:user_id] = @ses.id
      redirect_to articles_path
    else
      
    end 
  end
end
