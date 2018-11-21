class ApodController < ApplicationController


    def index
        
        @json_string =  Apod.result()
        # @json_string =  apod_new.result()
            
        respond_to do |format|
            format.html { render :index}
            format.json { render :index, json: @json_string.to_json }
        end
    end

end
