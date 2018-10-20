class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:new, :index, :edit, :update, :destroy, :male, :female, :featured]
  
  before_action :set_user, only: [:show, :edit, :update, :destroy, :upvote, :downvote, :cancel_account]

  

  def index
    @users = User.all
    @posts = Post.all.order("created_at DESC").limit(7)
  end


  def show
    
  end


  def edit
  end


  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: t('helpers.successfully_updated') }
        format.json { render :show, status: :ok, location: @user }
        format.js do
        end
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end



  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: t('helpers.successfully_deleted') }
      format.json { head :no_content }
    end
  end


  private

    def set_user
      @user = User.find(params[:id])
    end

    # Duc's code
    # def blank_database(f)
    #     !current_user.f.blank?
    # end

    def user_params
      params.require(:user).permit(
        :name,
        :address, 
        :city,
        :password, :tag_list)
    end
end