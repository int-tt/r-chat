class HomeController < ApplicationController
  def index
    @rooms = Room.all
    @users = User.all
    @messages = Message.all
  end
end
