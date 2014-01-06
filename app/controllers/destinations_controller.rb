class DestinationsController < ApplicationController

	def destinations_page		

	end

	def top

		@topdestination = TopDestination.all
		@hash = Gmaps4rails.build_markers(@topdestination) do |top, marker|
		  marker.lat top.latitude
		  marker.lng top.longitude
		 	@a = marker.json({ :id => top.id, :link => "topdestination"})

		end
		respond_to do |format|

      format.js 


    end

	   # render '/destinations/_top_destinations'
	   # render '/destinations/_top_destinations', :handler => :erb, :layout => false
  end	

  # def cities

  # 	respond_to do |format|

  #     format.js 


  #   end
  	
  # end

  # def castles
  # 	respond_to do |format|

  #     format.js 


  #   end
  # end
  
  def topdestination



  end
end
