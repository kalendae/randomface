class FacesController < ApplicationController
  # GET /faces
  # GET /faces.xml
  def index
    max = Face.maximum(:id)
    @face = Face.where(["id > ?", rand(max)]).limit(1).first

    respond_to do |format|
      format.html # index.html.erb
    end
  end

end
