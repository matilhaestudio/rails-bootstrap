class Admin
  class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_admin!

    def index
      @posts = current_admin.posts
    end

    def show; end

    def new
      @post = current_admin.posts.new
    end

    def edit; end

    def create
      @post = current_admin.posts.new(post_params)

      if @post.save
        flash[:notice] = 'Publicação criada com sucesso'
        redirect_to admin_post_url(@post)
      else
        flash[:alert] = 'Revise os seguintes campos'
        render :new
      end
    end

    def update
      if @post.update(post_params)

        flash[:notice] = 'Publicação atualizada com sucesso'
        redirect_to admin_post_url(@post)
      else
        flash[:alert] = 'Revise os seguintes campos'
        render :edit
      end
    end

    def destroy
      @post.destroy
      redirect_to admin_posts_url
    end

    private

    def set_post
      @post = current_admin.posts.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :admin_id)
    end
  end
end
