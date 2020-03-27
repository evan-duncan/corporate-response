class SearchesController < ApplicationController
  def show
    @org = Organization.find_by(name: search_params[:q])
    redirect_to organization_path(@org.id) if @org.present?
  end

  private

    def search_params
      params.permit(:q)
    end
end
