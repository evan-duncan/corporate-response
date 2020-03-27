class Organizations::EventsController < ApplicationController
  def index
  end

  def show
    @event = Event.find(params[:id])
    @organization = Organization.find(params[:organization_id])
  end
end
