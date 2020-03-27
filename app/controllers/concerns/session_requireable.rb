# frozen_string_literal: true

module SessionRequireable
  extend ActiveSupport::Concern

  included do
    before_action :authenticate_user!
  end
end