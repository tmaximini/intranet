# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :assignment do
      profile_id 1
      project_id 1
      role "MyString"
    end
end