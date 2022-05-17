class PostsController < ApplicationController
    #def functions
    
      def new
        @place = Place.new
     
    end

    def create
        @place = Place.new
        @place["name"] = params["place"]["name"]
        @place["city"] = params["place"]["city"]
        @place["state"] = params["place"]["state"]
        @place.save
        redirect_to "/places"
      end
    
     
    end

