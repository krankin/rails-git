require 'spec_helper'

describe "GithubUserLookup" do
  
  describe "when a user is searched" do
    
    it "should show user", :vcr do
      visit root_path
      fill_in "user_name", with: "octocat"
      click_on "Lookup"
      page.should have_content("octocat")
    end
  end

  describe "when a user that doesn't exist is searched" do

    it "should not find the user", :vcr do
      visit root_path
      fill_in "user_name", with: " "
      click_on "Lookup"
      page.should have_content("Not Found")
    end
  end
end