require 'faker'

FactoryGirl.define do
	factory :photo do
		name { Faker::Name.first_name }
		description { Faker::Lorem.paragraph }
	end
end