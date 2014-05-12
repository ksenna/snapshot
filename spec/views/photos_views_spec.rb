require 'spec_helper'

describe "photos/index" do
  it "renders photo" do
    assign(:photos, [stub_model(Photo)])
    render
    expect(view).to render_template(:partial => "_form", :count => 2)
  end
end

describe "photos/show" do
  it "displays the photo description" do
    assign(:photo, stub_model(Photo,
      :description => "Fun Photo!!"
    ))
    render
    expect(rendered).to include("Fun Photo!!")
  end
end