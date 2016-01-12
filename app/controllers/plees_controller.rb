require 'net/http'

class PleesController < ApplicationController
  
  DEFAULT_FAMILY = "vpro"

  def index
  end
  
  def vpro
    width = params[:width]
    height = params[:height]
    family = DEFAULT_FAMILY
    handleimage(width, height, family)
  end
  
  def vprosquare
    width = params[:square]
    height = params[:square]
    family = DEFAULT_FAMILY
    handleimage(width, height, family)    
  end
  
  private 
  
  def do_nothing
  end
  
  def handleimage(desiredWidth, desiredHeight, family)
    
      desiredWidth = desiredWidth.to_i > 1001 ? 1001 : desiredWidth.to_i
      desiredWidth = desiredWidth.to_i < 1 ? 1 : desiredWidth.to_i
      desiredHeight = desiredHeight.to_i > 1001 ? 1001 : desiredHeight.to_i
      desiredHeight = desiredHeight.to_i < 1 ? 1 : desiredHeight.to_i
      
      #determine if landscape or portrait is being requested
      orientation = (desiredWidth >= desiredHeight) ? "landscape" : "portrait"
      
      #get a pic
      pic = choosepic(desiredWidth.to_i, desiredHeight.to_i, orientation, family)
      
      #open and resize the image
      image = Magick::Image.read(File.expand_path("../../pics/#{family}/#{orientation}/#{pic}.jpg", __FILE__)).first
      image.resize_to_fill!(desiredWidth.to_i, desiredHeight.to_i)
      image_as_blob = image.to_blob { self.quality=50 }
      
      #set headers and send the data
      response.headers["Cache-Control"] = "max-age=31622400"
      response.headers["Expires"] = 1.year.from_now.httpdate
      send_data image_as_blob, :type => "image/jpeg", :disposition => "inline"
  end
  
  def choosepic(desiredWidth, desiredHeight, orientation, family)
    if family == DEFAULT_FAMILY
      if orientation == "landscape"
        if desiredWidth <= 200
          pic = 1
        elsif desiredWidth <= 400
          pic = 2
        elsif desiredWidth <= 600
          pic = 3
        elsif desiredWidth <= 800
          pic = 4
        else
          pic = 5
        end
      elsif orientation == "portrait"
        if desiredWidth <= 250
          pic = 1
        elsif desiredWidth <= 450
          pic = 2
        elsif desiredWidth <= 600
          pic = 3
        else
          pic = 4
        end
      end
    end
  end
end