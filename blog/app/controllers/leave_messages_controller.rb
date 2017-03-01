class LeaveMessagesController < ApplicationController

  def new
    @leaveMessages = Comments.new
  end

  def index
    @messages = Comments.all
    @leaveMessages = @messages.article_id.alive
  end

end
