# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Organization, type: :model do
  context 'validations' do
    subject { Organization.create(name: 'Evil Corp') }

    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
    it { should allow_value('https://www.corporateresponse.net').for(:domain) }
    it { should_not allow_value('foo').for(:domain) }
    it { should validate_uniqueness_of(:domain) }
  end

  context 'associations' do
    it { should have_many(:evidences) }
    it { should have_and_belong_to_many(:events) }
  end

  describe '#name_search' do
    before do
      5.times do
        n = SecureRandom.random_number
        Organization.create(name: "Evil Corp #{n}", domain: "https://www.evil-corp-#{n}.com")
      end
    end

    it 'should return organizations with a similar name' do
      expect(Organization.name_search('evil corp').count).to eq(5)
    end

    it 'should not return organizations where the search query is not good enough' do
      expect(Organization.name_search('evil').count).to eq(0)
    end
  end
end
