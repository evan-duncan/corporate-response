class CorporateResponsesController < ApplicationController
  def index
    @evidence = Evidence.limit(10).order(id: :desc)
  end
end
