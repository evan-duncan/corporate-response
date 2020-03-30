FactoryBot.define do
  factory :scraping_attribute do
    heading_selector { "MyString" }
    subheading_selector { "MyString" }
    story_selector { "MyString" }
    source { nil }
  end
end
