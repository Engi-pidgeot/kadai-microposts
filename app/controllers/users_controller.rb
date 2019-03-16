class UsersController < ApplicationController
  def index
    @users = User.all.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] ="ユーザを登録しました"
      redirect_to @user
    else
      flash[:danger] = "ユーザーを登録できませんでした"
      render "new"
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
  #{params: {user:{name: "AAA",email: "AAA@AAA", password: "asssa"}}}
end