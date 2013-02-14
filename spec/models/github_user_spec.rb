require 'spec_helper'

describe GithubUser do

  # Since we are using vcr for feature tests lets go ahead and always
  # hit the service to make sure everything is working.
  describe "when finding the user" do

    describe "and the user exists" do
      it "should return the users json" do
        json = GithubUser.find("octocat")
        json.should include("login" => "octocat")
      end
    end

    describe "and the user does not exist" do
      it "should return not found message" do
        json = GithubUser.find(" ")
        json.should include("message"=>"Not Found")
      end
    end
  end
end