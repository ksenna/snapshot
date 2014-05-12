require 'spec_helper' 

describe Photo do 
# 	it "has a valid factory" do
# 		Factory.create(:photo).should be_valid
# 	end
# 	it "is invalid without a name" do
# 		Factory.build(:photo, name: nil).should_not be_valid
# 	end
# 	it "has a description"
# #	it "is invalid without a name" 
# end

# describe 'photos/show.html.haml' do
# 	context 'when a name is entered' do
# 		it 'displays name of the photo' do
# 			assign :photo, build(:photo, name: 'John')
# 			render
# 			expect(rendered).to have_content 'John'
# 		end
# 	end
# end

	describe 'get show' do
		it 'should assign photo to @photo' do
			photo = FactoryGirl.create(:photo)
			get :show, id: photo.id
			#@event.should_not be(nil)
			assigns(:photo).should eq(photo)
		end
	end

	describe 'put update' do
		it 'should update photo' do
			#photo = Photo.create
			photo = FactoryGirl.create(:photo)
			put :update, id: photo.id, photo:{name: "Home Sweet Home"}
			assigns(:photo).name.should eq("Home Sweet Home")
		end
	end
end


