require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:synopsis) }
    it { should validate_presence_of(:url) }
    it { should allow_value("https://en.wikipedia.org/wiki/Coronavirus_disease_2019").for(:url) }
    it { should_not allow_value("foo").for(:url) }
    it { should validate_presence_of(:image) }
  end

  context 'associations' do
    it { should have_and_belong_to_many(:organizations) }
    it { should have_many(:evidences) }
    # TODO: Add association test for :image when active storage matchers are supported
  end
end
