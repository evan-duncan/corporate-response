class EvidencesController < ApplicationController
  def new
    @submission = authorize Submission.new
  end

  def create
    @submission = authorize Submission.create(strong_params)
    source = Source.find_by(url: @submission.host_name)
    @submission.source = source if source.present?
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
