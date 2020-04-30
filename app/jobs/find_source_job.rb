class FindSourceJob < ApplicationJob
  queue_as :default

  def perform(uri, submission_id)
    submission = Submission.find(submission_id)
    parsed_uri = URI.parse(uri)
    domain = PublicSuffix.domain(parsed_uri.host)
    client = Whois::Client.new
    response = client.lookup(domain)
    organization = response.match(/Registrant Organization:\s*(?<organization>.+?)\n/)[:organization]

    if organization.nil? || organization.match(/redacted/i)
      SourceOrganizationRedactedMailer.with(submission: submission).notify_admins.deliver_later
    else
      source = Source.create(name: organization, url: "#{parsed_uri.scheme}://#{parsed_uri.host}")
      submission.source = source
      submission.save!
    end
  end
end
