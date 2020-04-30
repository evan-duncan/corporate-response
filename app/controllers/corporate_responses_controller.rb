class CorporateResponsesController < ApplicationController
  def index
    @events = authorize policy_scope(Event)
    @submissions = authorize(policy_scope(Submission)).latest
  end
end
