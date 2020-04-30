# Preview all emails at http://localhost:3000/rails/mailers/source_organization_redacted
class SourceOrganizationRedactedPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/source_organization_redacted/notify_admins
  def notify_admins
    SourceOrganizationRedactedMailer.notify_admins
  end

end
