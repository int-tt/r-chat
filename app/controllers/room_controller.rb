class RoomController < ApplicationController
  before_action :signed_in_user,
                only: [:new, :create, :show]

  def new
    @users = User.all
  end

  def create
    userId = 2
    roomName = params[:roomName]
    members = params[:members]


    room = Room.create(:room_name => roomName, :create_user_id => userId)

    unless room.new_record?
      id = room.id
      members.each do |member|
        RoomMember.create(:room_id => id, :user_id => userId)
      end
    else

    end
  render :text => "aaa"
  end

  def show

  end

  private
  def room_params
    params.require(:room).permit(:room_name, :created_user_id)
  end
end
