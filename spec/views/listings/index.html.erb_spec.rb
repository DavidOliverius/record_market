require 'rails_helper'

RSpec.describe "listings/index", type: :view do
  before(:each) do
    assign(:listings, [
      Listing.create!(
        title: "Title",
        artist: "Artist",
        label: "Label",
        condition: 2,
        description: nil,
        price: 3,
        sold: false,
        user: nil,
        genre: nil
      ),
      Listing.create!(
        title: "Title",
        artist: "Artist",
        label: "Label",
        condition: 2,
        description: nil,
        price: 3,
        sold: false,
        user: nil,
        genre: nil
      )
    ])
  end

  it "renders a list of listings" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Artist".to_s, count: 2
    assert_select "tr>td", text: "Label".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
