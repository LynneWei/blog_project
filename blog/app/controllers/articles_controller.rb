class ArticlesController < ApplicationController

  # http_basic_authenticate_with name: "Lynne", password: "secret", except: [:index, :show]

  def new
    @article = Article.new
  end

  def index
  	@article = Article.all
  end

  def show
  	#Rails.logger.warn "=======================".inspect
  	#Rails.logger.warn params.inspect
  	@article = Article.find(params[:id])
  end

  def create
    # @article.title = params[:title]
    # @article.title = params[:title]
    
    logger.info "+++++++++++++++"
    logger.info session[:user_id]
  	@article = Article.new(article_params)
    @article.user_id = session[:user_id]
  	if @article.save
  	  redirect_to @article
    else
      render 'new'
    end
  	#render plain: params[:article].inspect
  end

  # def edit

  #   @article = Article.find(params[:id])
  # end

  # def update
  #   @article = Article.find(params[:id])
  #   @article.user_id = session[:user_id]
  #   if @article.update(article_params)
  #     redirect_to @article
  #   else
  #     render 'edit'
  #   end
  # end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title,:category,:text)
    end
end
