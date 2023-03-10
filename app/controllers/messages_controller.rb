class MessagesController < ApplicationController
  def index
    @message = Message.new
    @room = Room.find(params[:room_id])
    # https://master.tech-camp.in/v2/curriculums/4860
    @messages = @room.messages.includes(:user)
    # https://master.tech-camp.in/v2/curriculums/4863
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    # @message.save
    if @message.save
      redirect_to room_messages_path(@room)
    else
      @messages = @room.messages.includes(:user)
      render :index
    end
    # https://master.tech-camp.in/v2/curriculums/4862
  end

  private

  def message_params
    # params.require(:message).permit(:content).merge(user_id: current_user.id)
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
  # https://master.tech-camp.in/v2/curriculums/4861
end
