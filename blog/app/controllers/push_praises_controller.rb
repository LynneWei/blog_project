class PushPraisesController < ApplicationController
  def create
    @article=Article.find(params[:article_id])
    @article.push_praises.create(article_id:params[:article_id])
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @push_praises = @article.push_praises.find(params[:id])
    @push_praises.destroy
    redirect_to article_path(@article)
  end
end
