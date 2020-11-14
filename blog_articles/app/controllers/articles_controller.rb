class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])  
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        # @article.title = params[:article][:title]
        # @article.body = params[:article][:body]
        if @article.save
            redirect_to articles_path
        else
            render :new
        end
    end

    def edit
        @article = Article.find(params[:id])        
    end

    def update
        @article = Article.find(params[:article][:id])  
        if @article.update(article_params)
            redirect_to articles_path
        else
            render :edit
        end
    end

    private
    #strong parameter
    def article_params
        params.require(:article).permit(:title, :body)
    end

end
