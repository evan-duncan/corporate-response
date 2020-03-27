require 'rails_helper'

RSpec.describe Evidence, type: :model do
  context 'validations' do
    subject do
      Evidence.new(organization: FactoryBot.create(:organization), url: 'https://www.evil-copr.com/bullshit-response')
    end

    it { should validate_presence_of(:url) }
    it { should allow_value("https://www.evil-corp.com/bullshit-response").for(:url) }
    it { should_not allow_value("foo").for(:url) }
    it { should validate_uniqueness_of(:url) }
  end

  context 'associations' do
    it { should belong_to(:organization) }
  end
end
