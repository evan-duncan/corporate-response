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
end
