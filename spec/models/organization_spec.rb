# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Organization, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should allow_value('https://www.corporateresponse.net').for(:domain) }
    it { should_not allow_value('foo').for(:domain) }
  end
end
