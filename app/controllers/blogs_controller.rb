class BlogsController < ApplicationController

    before_action :find_id, only: [:show, :update, :destroy, :edit]

    def index
        @Blogs = Blog.all
    end

    def show
    end

    def new
      @Blog = Blog.new
    end

    def create
      @Blog = Blog.create(define_params)
        if @Blog.save
          redirect_to root_path
        else
          render :new
        end
    end

    def edit
    end

    def update
      if @Blog.update(define_params)
        redirect_to root_path
      else
        render :edit
      end
    end
    
    def destroy
      @Blog.destroy
      redirect_to root_path
    end
  

    private

    def find_id
      @Blog = Blog.find(params[:id])
    end

    def define_params
      params.require(:blog).permit(:title, :content)
    end
end
