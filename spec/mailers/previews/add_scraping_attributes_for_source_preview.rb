# Preview all emails at http://localhost:3000/rails/mailers/add_scraping_attributes_for_source
class AddScrapingAttributesForSourcePreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/add_scraping_attributes_for_source/notify_admins
  def notify_admins
    AddScrapingAttributesForSourceMailer.notify_admins
  end

end
