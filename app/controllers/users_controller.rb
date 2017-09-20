class UsersController < Clearance::UsersController
  private

  def show
    @user = User.find(params[:id])
    @shouts = @user.shouts
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
