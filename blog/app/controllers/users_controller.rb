class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # @user.name     = params[:name]
    # @user.password = params[:password]
    if @user.save
      redirect_to new_session_path
    else
      render 'new'
    end
  end

  def index
    @icon = Icon.find_by id: session[:user_icon_id]
    logger.info '@----------------------------------------'
    logger.info @icon.icon_path.inspect
  end

  private
  def user_params
    params.require(:user).permit(:name,:password,:icon_id)
  end
end