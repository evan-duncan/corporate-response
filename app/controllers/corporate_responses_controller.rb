class CorporateResponsesController < ApplicationController
  def index
    @events = Event.all
  end
end
