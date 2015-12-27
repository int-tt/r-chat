class RoomController < ApplicationController
  def new
    @users = User.all
  end

  def create
    @room = Room.new(room_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def room_params
    params.require(:room).permit(:room_name, :created_user_id)
  end
end
