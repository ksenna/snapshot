require 'spec_helper'

describe Event do
	it 'should exists' do
		e = Event.new
		e.save
		e.should_not eq(nil)
	end

	it 'should have events' do
		@event = Event.all 
		@event.should_not eq(nil)
	end

	# it 'should have a title' do
	# 	e = Event.new name: "Title",
	# 	e.save
	# 	assigns(:event).name.should eq("Title")
	# end
end

		# event = FactoryGirl.create(:event)
		# put :update, id: event.id, event:{ name: "Home Sweet Home"}
		# assigns(:event).name.should eq("Home Sweet Home")

	# describe 'get show' do
	# 	it 'should assign event to @event' do
	# 		event = FactoryGirl.create(:event)
	# 		get :show, :id event.id
	# 		#@event.should_not be(nil)
	# 		assigns(:event).should eq(event)
	# 	end
	# end

