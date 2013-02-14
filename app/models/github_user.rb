class GithubUser
  include HTTParty
  base_uri "https://api.github.com"
  default_params output: 'json'
  format :json

  def self.find(user)
    get("/users/#{user}")
  end
end