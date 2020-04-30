require "rails_helper"

RSpec.describe SourceOrganizationRedactedMailer, type: :mailer do
  describe "notify_admins" do
    let(:mail) { SourceOrganizationRedactedMailer.notify_admins }

    it "renders the headers" do
      expect(mail.subject).to eq("Notify admins")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
