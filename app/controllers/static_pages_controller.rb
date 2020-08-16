class StaticPagesController < ApplicationController
  def landing
  end
  def booger
    code = params[:code]
    req = HTTP.post('https://api.producthunt.com/v2/oauth/token', :json => { 
      "client_id": "zGwRsoqwyQsY2y9btTHA7mnWF0foKCxQID89LrLKeMY",
      "client_secret": "Lux6dn4exeK4LvhoD_0JK1X6ydfe74FpltcXdYdSCRo",
      "redirect_uri": "https://buyproducthunt.herokuapp.com/booger",
      "code": code,
      "grant_type": "authorization_code"
      })
    @a =  JSON.parse(req.to_s)
  end
end
