class RatingsController < ApplicationController
  before_action :set_article

  def new
  @articlce = Article.find(params[:article_id])
  @rating = @article.ratings.new
  end

  def create
    @rating = @article.ratings.new
    @rating.rating = params[:rating][:rating]
    @rating.user = current_user
    if @rating.save
      redirect_to article_path(@article), :notice => "Rating successful."
    else
      redirect_to article_path(@article), :notice => "Something went wrong."
    end
  end

  def update
    @rating = Rating.find(params[:id])
    @rating.update_attribute(rating: params[:rating])
  end

  private
    def set_article
      @article = Article.find(params[:article_id])
    end
end