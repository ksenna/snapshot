require 'test_helper'

class PhotosTagsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_photo_description
  	@photo = FactoryGirl.create(:photo)

  	@photo.description
  end
end
