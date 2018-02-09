class PagesController < ApplicationController
    
    def index
       @room = Room.order("RANDOM()").limit(3) 
    end
    
    

end