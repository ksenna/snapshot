require 'faker'

FactoryGirl.define do
	factory :photo do
		name { Faker::Lorem.sentence }
		description { Faker::Lorem.paragraph }
	end


	factory :photo do |p|
		p.name "Sample Title"
	end
end