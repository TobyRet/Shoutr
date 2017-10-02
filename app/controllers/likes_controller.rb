class LikesController < ApplicationController
  def create
    current_user.like(shout)
  end
end

private

def shout
  @_shout ||= Shout.find(params[:id])
end
