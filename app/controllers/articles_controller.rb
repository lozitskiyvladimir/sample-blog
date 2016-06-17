class ArticlesController < ApplicationController

  def index
    @articles  = Article.all
  end

  def new
  end

  def create
      render plain: params[:article].inspect
      @article = Article.new(article_params)
      @article.save
  end
end

def article_params
  params.require(:article).permit(:id, :title, :text)
end
