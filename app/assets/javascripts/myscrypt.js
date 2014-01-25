$(function(){
    $("#home a:contains('Home')").parent().addClass("active");
    $("#aboutromania a:contains('About Romania')").parent().addClass("active");
    $("#whattodo a:contains('What to do')").parent().addClass("active");
    $("#destinations a:contains('Destinations')").parent().addClass("active");
    $("#multimedia a:contains('Multimedia')").parent().addClass("active");
    $("#specialinterest a:contains('Special Interest')").parent().addClass("active");
    $("#tripplanner a:contains('Trip Planner')").parent().addClass("active");
    
    $("ul.nav li.dropdown").hover(
        function(){
            $(".dropdown-menu",this).fadeIn(0)
            },
        function(){
            $(".dropdown-menu",this).fadeOut(0)
        })
    ,$(".modalphotos img").on("click",
        function(){
            $("#modal").modal({show:!0});var a=this.src.substr(0,this.src.length-7)+".jpg";
            $("#modalimage").attr("src",a),
            $("#modalimage").on("click",function(){
                $("#modal").modal("hide")
            })
        })
	   $("#ascunde_harta").click(function(){
        	$("#map").hide(); 
        	$("#ascunde_harta").hide();
    			$("#arata_harta").show();    	
        });

         $("#arata_harta").click(function(){
        	$("#map").show(); 
        	$("#ascunde_harta").show();
    			$("#arata_harta").hide();
         });

       
       if ( $("#about").hasClass("active") ) {
            $("#about_drop").css("visibility","visible");
       };
        
        if ( $("#destination").hasClass("active") ) {
            $("#destinations_drop").css("visibility","visible");
       };
         
        if ( $("#interest").hasClass("active") ) {
            $("#interest_drop").css("visibility","visible");
       };
       
        if ( $("#trip").hasClass("active") ) {
            $("#trip_drop").css("visibility","visible");
       };
    
    $('.rating_star_active').click(function() {
        var star = $(this);
        var location_id = $(this).attr("data-location-id");
        var stars = $(this).attr("data-stars");
        for (i=1;i<=5;i++)
        {
            if(i<= stars){
                $('#' + location_id + '_' + i). addClass('on');
            } else {
                $('#' + location_id + '_' + i). removeClass('on');
            }
        }
        $.ajax({
            type:"post",
            url: "/destinations/rate_loc/"+location_id+"/"+stars,
            beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
            complete: function(){
                
            $.ajax({
                type:"get",
                url: "/destinations/rate_loc/"+location_id,
                dataType: "json",
                complete: function(data){
                    var a = data.responseText;
                    var obj = jQuery.parseJSON(a);
                    var number = parseInt(obj["note"])
                    
                    $('.global_star_'+location_id).empty();
                    for(j=1;j<=5;j++)
                    {
                        if(j<=number){
                            $('.global_star_'+location_id).append("<li class='rating_star on'></li>");
                        }else {
                            $('.global_star_'+location_id).append("<li class='rating_star'></li>");
                        }
                    }

                }
            });
        }
        });
    });  



	});