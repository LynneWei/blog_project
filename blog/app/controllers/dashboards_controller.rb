class DashboardsController < ApplicationController

  def show
    if session[:user_id] != nil
      @user = User.find(session[:user_id])
      @article = Article.find(session[:user_id])
      @leaveMessage = Comment.find_by article_id: 0
    end
  end

end
