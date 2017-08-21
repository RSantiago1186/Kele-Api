<b> Synopsis </b>

Bloc's API provides an external facing JSON Web Token authorized gateway to the Bloc application. You can access it via cURL, but an API client can manage the low-level details of making requests and handling responses. Build the Kele API Client to provide easy access to and use of the student endpoints of Bloc's API.

<b> Code Example </b>

      ~/p/kele ❯❯❯ irb
       > require './lib/kele.rb'
       => true
      > kele_client = Kele.new("jane@gmail.com", "abc123")
      > kele_client.get_me


<b> API Reference </b>

Bloc's base API URL: https://www.bloc.io/api/v1