class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order("created_at DESC").limit(5)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end


  def create
    @post = Post.new(post_params)
    @posts = Post.all.order("created_at DESC").limit(7)
  
    respond_to do |format|
      if @post.save
        format.js
      else
        format.json  { render :json => @post.errors,
                      :status => :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:user_id, :user_pic, :content)
    end
end
