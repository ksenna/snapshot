describe PhotoController do 
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

  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
end
