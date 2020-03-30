# frozen_string_literal: true

module Admin
  module Tools
    class SentimentsController < ApplicationController
      def new
      end

      def create
        AnalyzeSentimentJob.perform_later(strong_params[:submission_id], strong_params[:text])
        redirect_back fallback_location: new_admin_tools_sentiments_path, flash: { notice: "Queued" }
      end

      private

        def strong_params
          params.permit(:text, :submission_id)
        end
    end
  end
end
