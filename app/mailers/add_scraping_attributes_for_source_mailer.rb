class AddScrapingAttributesForSourceMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.add_scraping_attributes_for_source_mailer.notify_admins.subject
  #
  def notify_admins
    @source = params[:source]

    mail to: -> { User.admins.pluck(:email) }
  end
end
