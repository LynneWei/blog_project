class LeaveMessagesController < ApplicationController


  def create
    comment = Comment.new
    comment.commenter=params[:commenter].strip
    comment.body=params[:body].strip
    comment.article_id = Rails.configuration.null_article_id
    comment.save

    flash[:errors] =comment.errors.messages if comment.errors.messages.size > 0

    redirect_to leave_messages_path
  end

  # def show
  #   @article = Article.find_by id: '0'
  #   # logger.info "---------------------------------"
  #   # logger.info @article.comments.commenter.first
  #
  # end

  def index
    @leave_messages = Comment.where('article_id = 0').reorder('created_at DESC').paginate(page: params[:page], per_page: 10)
   end

  # private
  # def messages_params
  #   params.require(:comment).permit(:commenter, :body, :article_id)
  # end

end
