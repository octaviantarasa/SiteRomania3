$(function(){$("#home a:contains('Home')").parent().addClass("active"),$("#aboutromania a:contains('About Romania')").parent().addClass("active"),$("#whattodo a:contains('What to do')").parent().addClass("active"),$("#destinations a:contains('Destinations')").parent().addClass("active"),$("#multimedia a:contains('Multimedia')").parent().addClass("active"),$("#specialinterest a:contains('Special Interest')").parent().addClass("active"),$("#tripplanner a:contains('Trip Planner')").parent().addClass("active"),$("ul.nav li.dropdown").hover(function(){$(".dropdown-menu",this).fadeIn(0)},function(){$(".dropdown-menu",this).fadeOut(0)}),$(".modalphotos img").on("click",function(){$("#modal").modal({show:!0});var a=this.src.substr(0,this.src.length-7)+".jpg";$("#modalimage").attr("src",a),$("#modalimage").on("click",function(){$("#modal").modal("hide")})})
	   $("#ascunde_harta").click(function(){
        	$("#mapp").hide(); 
        	$("#ascunde_harta").hide();
    			$("#arata_harta").show();    	
        });

         $("#arata_harta").click(function(){
        	$("#mapp").show(); 
        	$("#ascunde_harta").show();
    			$("#arata_harta").hide();
         });



	});