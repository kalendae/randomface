class FacesController < ApplicationController
  # GET /faces
  # GET /faces.xml
  def index
    max = Face.maximum(:id)
    @face = Face.where(["id > ?", rand(max)]).limit(1).first

    redirect_to "http://en-us.facebook.com/people/-/#{@face.fb_id}"
  end

end
