class CorporateResponsesController < ApplicationController
  def index
    @events = policy_scope(Event)
    authorize @events
  end
end
