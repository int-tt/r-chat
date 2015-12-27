class MessageController < ApplicationController
  before_action :signed_in_user,
                only: [:create, :show]
  def create
    @message = Message.new
    @message.user_id = current_user.id
    @message.to_user_id = params[:to_user_id]
    @message.message = params[:message]

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

  def show

  end

  private
  def message_params
    params.require(:message).permit(:user_id, :to_user_id, :message)
  end
end
