class EvidencesController < ApplicationController
  include SessionRequireable

  def new
    @submission = Submission.new
    authorize @submission
  end

  def create
    @submission = Submission.create(strong_params)
    authorize @submission
    if @submission.save
      redirect_to root_path, flash: { notice: 'Thank you for your submission'}
    else
      redirect_back fallback_location: root_path, flash: { alert: @submission.errors.full_messages }
    end
  end

  private

  def strong_params
    params.require(:submission).permit(:url, :opinion)
  end
end
