class ApplicationController < ActionController::Base
  def create
    Event.create(event_parameter)
    redirect_to root_path
  end

  private

  def event_parameter
    params.require(:event).permit(:title, :content, :start_time)
  end

end

