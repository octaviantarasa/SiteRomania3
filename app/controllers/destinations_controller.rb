class DestinationsController < ApplicationController

	def destinations_page		

	end

	def hello

		respond_to do |format|

      format.js 


    end
	   # render '/destinations/_top_destinations'
	   # render '/destinations/_top_destinations', :handler => :erb, :layout => false
  end	
end
