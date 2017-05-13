class SessionsController < ApplicationController
  def new
    @session = User.new
    # @icon = Icon.new
  end

  def create
    @ses = User.find_by name: params[:name], password: params[:password]
    # logger.info '-----------------------------------------'
    # logger.info @ses.inspect
    if @ses
      session[:user_id] = @ses.id
      session[:user_icon_id] = @ses.icon_id
      # @icon = Icon.find_by id: @ses.icon_id
      # session[:icon_id] = @icon.icon_path
      # logger.info '@@@@!!@@@----------------------------------------'
      # logger.info session[:icon_id].inspect
      redirect_to articles_path
    else
      render 'new'
    end 
  end
end
