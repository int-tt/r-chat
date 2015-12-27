class ChatController < ApplicationController
  def index
    @rooms = Room.all
    @users = User.all
    @name =  session[:user]['name']
  end

  def private
    @rooms = Room.all
    @users = User.all
    @toUser = params[:userId]
    @name =  session[:user]['name']
  end
end
