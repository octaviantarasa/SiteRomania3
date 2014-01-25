class DestinationsController < ApplicationController

	def destinations_page		

	end

  def cities
     $location = {}
    @tmp = 0
    @nr = 0

    all_table
    cities = City.all
    @hash = Gmaps4rails.build_markers(cities) do |top, marker|
      marker.infowindow render_to_string(:partial => "/destinations/infowindow", :locals => { title: top.title, description: top.address})
      marker.lat top.latitude
      marker.lng top.longitude
      marker.title top.title
    end

    respond_to do |format|
      
      
      format.js 
    end
  end


  def castles
     $location = {}
    @tmp = 0
    @nr = 0

    all_table
    castle = Castle.all
    @hash = Gmaps4rails.build_markers(castle) do |top, marker|
      marker.infowindow render_to_string(:partial => "/destinations/infowindow", :locals => { title: top.title, description: top.address})
      marker.lat top.latitude
      marker.lng top.longitude
      marker.title top.title
    end
    respond_to do |format|
      
      
      format.js 
    end
  end


	def top
    $location = {}
    $temp = params[:controller]
    topdestination = TopDestination.all
    castle = Castle.find_by_title("Castelul Bran")
    topdestination << castle
    castle = Castle.find_by_title("Castelul Peles")
    topdestination << castle
    @hash = Gmaps4rails.build_markers(topdestination) do |top, marker|
      marker.infowindow render_to_string(:partial => "/destinations/infowindow", :locals => { title: top.title, description: top.address})
      marker.lat top.latitude
      marker.lng top.longitude
      marker.title top.title
    end

    @tmp = 0
    @nr = 0

    all_table

		respond_to do |format|
      
      format.html
      format.js 
    end

  end	

  def comment
    @comment = Comment.new
    $er = params[:clas]
    respond_to do |format|
      format.js 
    
    end

  end


  def comment_show(array)

  end

  def create
    @comment = Comment.new(comment_params)
    verify = @comment.save
    $par = params.require(:comment).permit(:location_id)
   

    temp_location = TopDestination.find_by_id($par["location_id"])
    if !temp_location.nil?
      $location = information_com temp_location.title, TopDestination
    end

    temp_location = Castle.find_by_id($par["location_id"])
    if !temp_location.nil?
      $location = information_com temp_location.title, Castle
    end

    temp_location = City.find_by_id($par["location_id"])
    if !temp_location.nil?
      $location = information_com temp_location.title, City
    end
      # case par
      #   when !((temp_location = TopDestination.find_by_id(par)).nil?)
      #       @location = information_com temp_location.title, TopDestination
      #   when !((temp_location = Castle.find_by_id(par)).nil?)
      #       @location = information_com temp_location.title, Castle
      #   when !((temp_location = City.find_by_id(par)).nil?)
      #       @location = information_com temp_location.title, City
      #   else
      #       puts "adult"
      # end



    respond_to do |format|
      if verify

       format.js

      end
    end
   
  end
  

  def topdestination

  end

  def rate_loc
    location_id = params[:location_id]
    note = params[:note]
    r = RateLocation.where(:location_id => location_id, :user_id => current_user)
    if r.empty? 
    RateLocation.create(:note => note, :location_id => location_id, :user_id => current_user.id )
    else
     r[0].update(:note => note)
    end
   render :nothing => true
  end

  def rate_loc_value
    location_id = params[:location_id]

    r = RateLocation.where(:location_id => location_id)
    if !r.empty? 
      a = 0 
      n = 0
      r.each do |h|
        a += h.note
        n +=1 
      end
      respond_to do |format|
        format.js {render :json => {"note"=> a/n}}
      end
    end
  end


    private  

    def information_com(name, table)
      topdest = table.all
      top = topdest.find_by_title(name)
      com = Comment.where(:location_id => top.id)
      rate = RateLocation.where(:location_id => top.id)
      @h = Array.new
      # @h.compare_by_identity
      com.each do |t|
       
        # h["name"] = User.find_by_id(t.user_id).name
        # h["comm"] = t.com_text
         name =User.find_by_id(t.user_id).name
        # @h[name] = t.com_text
       
          @h << name 
          @h << t.com_text 
        
       
        
        puts @h

      end
      if rate.empty?
        @h << "note"
        @h << 0
      else
        nr = rate.size
        sum = 0
        rate.each do |t|
          sum += t.note
        end
        @h << "note"
        @h << sum/nr
      end
      @tmp = top.id
      @nr = @h.size
      @nr /=2
      @nr -=1
    return @h 

    end

    def all_table
       
    @sea = information_com("Marea Neagra", TopDestination)
    $sea_loc = @tmp
   
    @delta = information_com("Delta Dunarii", TopDestination)
    $delta_loc = @tmp
    # @sucevita = 

    @parliament = information_com("Casa Poporului", TopDestination)
    $parliament_loc = @tmp

    @sucevita = information_com("Manastirea Sucevita", TopDestination)
    $sucevita_loc = @tmp

    @moldovita = information_com("Manastirea Moldovita", TopDestination)
    $moldovita_loc = @tmp

    $arbore = information_com("Manastirea Arbore", TopDestination)
    $arbore_loc = @tmp

    @voronet = information_com("Manastirea Voronet",TopDestination)
    $voronet_loc = @tmp
    
    @bran = information_com("Castelul Bran", Castle)
    $bran_loc = @tmp

    @peles = information_com("Castelul Peles", Castle)
    $peles_loc = @tmp

    @corvinilor = information_com("Castelul Corvinilor",Castle)
    $corvinilor_loc = @tmp

    @balta = information_com("Cetatea de Balta",Castle)
    $balta_loc = @tmp    

    @fagaras = information_com("Cetatea Fagaras",Castle)
    $fagaras_loc = @tmp

    @prejmer = information_com("Cetatea Prejmer",Castle)
    $prejmer_loc = @tmp

    @rasnov = information_com("Cetatea Rasnov",Castle)
    $rasnov_loc = @tmp

    @brasov = information_com("Brasov", City)
    $brasov_loc = @tmp

    @bucuresti = information_com("Bucuresti", City)
    $bucuresti_loc = @tmp

    @cluj = information_com("Cluj", City)
    $cluj_loc = @tmp

    @constanta = information_com("Constanta", City)
    $constanta_loc = @tmp

    @iasi = information_com("Iasi", City)
    $iasi_loc = @tmp

    @timisoara = information_com("Timisoara", City)
    $timisoara_loc = @tmp
    end


    def comment_params
      params.require(:comment).permit(:com_text, :user_id, :location_id)
    end

end
