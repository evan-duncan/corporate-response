class Organizations::EventsController < ApplicationController
  def index
  end

  def show
    @event = Event.find(params[:id])
    @organization = Organization.find(params[:organization_id])
    @evidences = policy_scope(@organization.evidences.for_event(@event))
    authorize @event
    authorize @organization
    authorize @evidences
  end
end
