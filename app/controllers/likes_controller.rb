class LikesController < ApplicationController
    before_action :find_article_id
    
    def create
        @article.likes.create(user_id: current_user.name)
        redirect_to  article_path(@article)
    end
    
    private
    
    def find_article_id
        @article = Article.find(params[article_id])
    end
end
