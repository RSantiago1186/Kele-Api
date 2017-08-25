require 'httparty'
require 'json'

class Kele
  include HTTParty
  @base_uri  ='https://www.bloc.io/api/v1'

  def initialize(email, password)
    response = self.class.post("#{@base_uri}/sessions", body: { "email": email, "password": password })

    if response['auth_token'].nil?
      puts 'Invalid Credentials'
    else
      @auth = response['auth_token']
    end
  end
  
  def get_me
    response = self.class.get("#{@base_uri}/users/me", headers: { "authorization" => @auth })
    JSON.parse(response.body)
  end

  def get_mentor_availability
      @mentor_id = 99
      response = self.class.get("#{@base_uri}/mentors/99/student_availability", headers: { "authorization" => @auth })
      JSON.parse(response.body)
  end


end