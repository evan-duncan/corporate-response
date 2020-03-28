# frozen_string_literal: true

class SearchesController < ApplicationController
  def show
    authorize :search
    @organizations = Organization.name_search(search_params[:q])
    @search = search_params[:q]

    redirect_to organization_path(@organizations[0]) if @organizations.count == 1
  end

  private

  def search_params
    params.permit(:q)
  end
end
