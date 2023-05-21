class BlogController < ApplicationController
    def index
        @blogs=Blog.all
    end
    
   def create_blog
    author_name=params[:author_name]
    title=params[:title]
    content=params[:content]
    Blog.create(author_name:author_name,title:title, content: content)
    render json:{message:"created"}
   end

    

  end
  