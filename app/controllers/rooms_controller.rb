class RoomsController < ApplicationController

  def new
    @room = Room.new
  end
  def create
    # binding.pry

    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end

  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end

  def index
  end


end

# https://master.tech-camp.in/v2/curriculums/4849
# https://master.tech-camp.in/v2/curriculums/4711
# https://master.tech-camp.in/v2/curriculums/4856