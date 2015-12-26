class MessageController < ApplicationController
  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        format.html { redirect_to @message, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  def get_user_messages

  end

  def get_room_messages

  end

  private
  def message_params
    params.require(:message).permit(:user_id, :to_user_id, :message)
  end
end
