class SourceOrganizationRedactedMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.source_organization_redacted_mailer.notify_admins.subject
  #
  def notify_admins
    @submission = params[:submission]
    mail to: -> { User.admins.pluck(:email) }
  end
end
