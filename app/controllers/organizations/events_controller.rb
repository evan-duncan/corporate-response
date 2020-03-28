class Organizations::EventsController < ApplicationController
  def index
  end

  def show
    @event = Event.find(params[:id])
    @organization = Organization.find(params[:organization_id])
    authorize @event
    authorize @organization
  end
end
