require 'rails_helper'

RSpec.describe Submission, type: :model do
  context 'validations' do
    it { should validate_presence_of(:url) }
    it { should allow_value('https://www.wikipedia.com').for(:url) }
    it { should_not allow_value('foo').for(:url) }
    it { should validate_presence_of(:opinion) }
  end
end
