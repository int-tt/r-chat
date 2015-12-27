class HomeController < ApplicationController
  def index
    if signed_in?
      room_id = 0
      @rooms = Room.all
      @user = User.all
      @room_messages = Room.find(to_room_id)
      @messages = Message.all
    else
      redirect_to :signup
    end
  end

  def show
    to_user_id = params[:to_user_id]
    to_room_id = params[:to_room_id]
  end
end
