class GithubUserLookupController < ApplicationController
  def index
  end

  def show
    user_name = params[:user_name]
    @user = GithubUser.find(user_name)
  end
end
