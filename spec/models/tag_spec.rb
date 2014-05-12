require 'spec_helper'

describe Tag do
	it 'should have tags' do
			@tag = Tag.all 
			@tag.should_not eq(nil)
	end

end