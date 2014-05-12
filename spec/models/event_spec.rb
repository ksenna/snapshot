require 'spec_helper'

describe Event do
	it 'should have events' do
			@event = Event.all 
	end

	it 'should contain Events' do
    event.should_not eq(nil)
  end

end