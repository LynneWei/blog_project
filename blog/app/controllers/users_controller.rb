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
    @user = User.find(session[:user_id])
    if params[:signature] != nil
      # logger.info '@---------$$$$$$$$$-------------------------------'
      # logger.info @user.signature.inspect
      @user.update_attribute(:signature, params[:signature])
      # if @user.save
      #   # logger.info '###$$$$-------------------------------'
      #   # logger.info  @user.signature.inspect
      # else
      #   logger.info '^^^^^^--------------------------------'
      # end
      # logger.info '@---------$$$$**********$$$$$-------------------------------'
      # logger.info @user.signature.inspect
    else
    end
    # @user.update(user_signature)
    @icon = Icon.find_by id: session[:user_icon_id]
    # logger.info '@----------------------------------------'
    # logger.info @icon.icon_path.inspect
  end

  private
  def user_params
    params.require(:user).permit(:name,:password,:icon_id)
  end
end