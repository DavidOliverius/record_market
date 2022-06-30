require 'rails_helper'

RSpec.describe "listings/new", type: :view do
  before(:each) do
    assign(:listing, Listing.new(
      title: "MyString",
      artist: "MyString",
      label: "MyString",
      condition: "MyString",
      description: nil,
      price: 1,
      sold: false,
      user: nil,
      genre: nil
    ))
  end

  it "renders new listing form" do
    render

    assert_select "form[action=?][method=?]", listings_path, "post" do

      assert_select "input[name=?]", "listing[title]"

      assert_select "input[name=?]", "listing[artist]"

      assert_select "input[name=?]", "listing[label]"

      assert_select "input[name=?]", "listing[condition]"

      assert_select "input[name=?]", "listing[description]"

      assert_select "input[name=?]", "listing[price]"

      assert_select "input[name=?]", "listing[sold]"

      assert_select "input[name=?]", "listing[user_id]"

      assert_select "input[name=?]", "listing[genre_id]"
    end
  end
end
