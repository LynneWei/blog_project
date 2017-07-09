class PushPraisesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @priase = PushPraise.new
    @priase.count=params[:count].strip
    # comment.body=params[:body].strip
    @priase.article_id = params[:article_id]
    @priase.save
  end

  def destroy
    @article = Article.find(params[:article_id])
    @push_praises = @article.push_praises.find(params[:id])
    @push_praises.destroy
    redirect_to article_path(@article)
  end
end
