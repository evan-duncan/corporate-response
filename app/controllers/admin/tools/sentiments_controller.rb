# frozen_string_literal: true

module Admin
  module Tools
    class SentimentsController < ApplicationController
      def new
        @submissions = policy_scope(Submission.ready_for_processing).collect do |s|
          [s.url, s.id]
        end
      end

      def create
        AnalyzeSentimentJob.perform_later(strong_params[:submission_id])
        redirect_back fallback_location: new_admin_tools_sentiments_path, flash: { notice: "Queued" }
      end

      private

        def strong_params
          params.permit(:submission_id)
        end
    end
  end
end
