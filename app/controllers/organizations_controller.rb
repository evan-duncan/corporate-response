class OrganizationsController < ApplicationController
  def index
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def create
  end

  def new
  end
end
