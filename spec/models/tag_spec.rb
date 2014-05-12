require 'spec_helper'

describe Tag do
	it 'should have tags' do
			@tag = Tag.all 
	end

	it 'should not be nil' do
    tag.should_not eq(nil)
  end

end