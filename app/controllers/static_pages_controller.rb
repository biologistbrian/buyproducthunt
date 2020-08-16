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
    rit = HTTP.auth('Bearer '+code).post('https://api.producthunt.com/v2/api/graphql', :json => { 'query':'{viewer(){user{id, name, username,isMaker,twitterUsername,coverImage}}}'})
    @a = JSON.parse(rit.to_s)
  end
end
