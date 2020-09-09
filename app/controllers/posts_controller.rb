class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def update
    @post.update!(post_params)
    redirect_to posts_url, notice: "投稿「#{@post.name}」を更新しました。"
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: "投稿「#{@post.name}」を登録しました。"
    else
      render :new
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: "ポスト「#{@post.name}」を削除しました。"
  end

  private
    def post_params
      params.require(:post).permit(:name, :description, :latitude, :longitude)
    end

    def set_post
      @post = Post.find(params[:id])
    end
end
