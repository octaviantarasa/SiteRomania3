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

    @tmp = 0
    @sea = information_com("Marea Neagra", TopDestination)
    @delta = {}
    
    @delta = information_com("Delta Dunarii", TopDestination)
    @delta_loc = @tmp
    @sucevita = 

    @parliament = information_com("Casa Poporului", TopDestination)
    @bran = information_com("Castelul Bran", Castle)
    @peles = information_com("Castelul Peles", Castle)

    # @corvinesti = information("", Castle)

    @balta = information_com("Cetatea de Balta", Castle)
    @fagaras = information_com("Cetatea Fagaras", Castle)
    @prejmer = information_com("Cetatea Prejmer", Castle)
    @rasnov = information_com("Cetatea Rasnov", Castle)
    @viilor = information_com("Cetatea Valea Viilor", Castle)
    @viscri = information_com("Cetatea Viscri", Castle)
    @brasov = information_com("Brasov", City)
    @bucuresti = information_com("Bucuresti", City)
    @cluj = information_com("Cluj", City)
    @constanta = information_com("Constanta", City)
    @iasi = information_com("Iasi", City)
    @timisoara = information_com("Timisoara", City)
   

		
		respond_to do |format|
      format.js 
    end

  end	

  def comment
    @comment = Comment.new

    respond_to do |format|
      format.js 
      format.html
    end

  end

  def create
    @comment = Comment.new(comment_params)

    
      if @comment.save
       redirect_to destinations_path
      end
   
  end
  
  def topdestination
  end

  private 

    def information_com(name, table)
      topdest = table.all
      top = topdest.find_by_title(name)
      com = Comment.where(:location_id => top.id)
      rate = RateLocation.where(:location_id => top.id)
      h = Hash.new
     
      h.compare_by_identity
      com.each do |t|
        
        # h["name"] = User.find_by_id(t.user_id).name
        # h["comm"] = t.com_text
        name =User.find_by_id(t.user_id).name
        h[name] = t.com_text
        
      end
      if rate.empty?
        h["note"] = 0
      else
        nr = rate.size
        sum = 0
        rate.each do |t|
          sum += t.note
        end
        h["note"] = sum/nr
      end
      @tmp = top.id
    h 

    end

     def comment_params
      params.require(:comment).permit(:com_text, :user_id, :location_id)
    end

end
