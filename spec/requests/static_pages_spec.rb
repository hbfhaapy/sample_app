require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get static_pages_path
      # response.status.should be(200)
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end
end
