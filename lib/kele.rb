require 'httparty'
require 'json'

class Kele
  include HTTParty
  base_uri 'https://www.bloc.io/api/v1'

  def initialize(email, password)
    response = self.class.post('/sessions', body: { "email": email, "password": password })

    if response['auth_token'].nil?
      puts 'Invalid Credentials'
    else
      @auth = response['auth_token']
    end
    
  def get_me
    response = self.class.get('/users/me', headers: { "authorization" => @user_auth_token })
    # puts response.body.inspect
    JSON.parse(response.body)
  end
end