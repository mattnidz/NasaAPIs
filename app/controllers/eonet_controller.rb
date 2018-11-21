class EonetController < ApplicationController
    def index
        @json_string = Eonet.result()
            
        respond_to do |format|
            format.html { render :index}
            format.json { render :index, json: @json_string.to_json }
        end
    end
end
