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
      session[:user_name] = @ses.name
      session[:user_icon_id] = @ses.icon_id
      # @icon = Icon.find_by id: @ses.icon_id
      # session[:icon_id] = @icon.icon_path
      logger.info '@@@@!!@@@----------------------------------------'
      logger.info session[:user_name].inspect
      redirect_to dashboard_path("~")
    else
      render 'new'
    end 
  end
end
