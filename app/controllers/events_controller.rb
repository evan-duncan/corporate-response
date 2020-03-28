class EventsController < ApplicationController
  def index
  end

  def show
    @event = Event.find(params[:id])
    authorize @event
  end

  def new
  end

  def create
  end
end
