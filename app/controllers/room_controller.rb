class RoomController < ApplicationController
  def new
    @users = User.all
  end

  def create
    @room = Room.new(message_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to @message, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end
end
