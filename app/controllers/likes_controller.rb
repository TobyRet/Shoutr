class LikesController < ApplicationController
  before_filter :require_login
  def create
    current_user.like(shout)
    redirect_to root_path
  end

  def destroy
    current_user.unlike(shout)
    redirect_to root_path
  end
end

private

def shout
  @_shout ||= Shout.find(params[:id])
end
