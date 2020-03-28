class EvidencesController < ApplicationController
  include SessionRequireable

  def new
    @evidence = Evidence.new
    authorize @evidence
  end

  def create
  end
end
