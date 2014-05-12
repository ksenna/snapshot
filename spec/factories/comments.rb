# require 'spec_helper'

# describe Comment do
# 	it 'should have comments' do
# 			@comment = Comment.all 
# 	end

# 	it 'should not be nil' do
#     comment.should_not eq(nil)
#   end

# end

require 'faker'

FactoryGirl.define do
	factory :comment do
		#name { Faker::Name.first_name }
		name { Faker::Lorem.sentence }
		description { Faker::Lorem.paragraph }
	end
end