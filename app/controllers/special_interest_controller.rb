class SpecialInterestController < ApplicationController
	def special_interest_page
		
		$events = Event.all.order("date ASC")
		$rate_e = RateEvent.all
	end

	def rate_event
		event_id = params[:event_id]
    note = params[:note]
    r = RateEvent.where(:event_id => event_id, :user_id => current_user)
    if r.empty? 
    	RateEvent.create(:note => note, :event_id => event_id, :user_id => current_user.id )
    else
     r[0].update(:note => note)
    end
   render :nothing => true
	end

	def rate_event_value
    event_id = params[:event_id]

    r = RateEvent.where(:event_id => event_id)
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
end
