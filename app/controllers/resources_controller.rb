class ResourcesController < ApplicationController
    def show
        @resource = Resource.find_by(id: params[:id])
        if !@resource
            render :json => {error: "Resource not found"}
        end 

        respond_to do |format|
            format.json  { render :json => @resource }
        end
    end

    def index
        @resources = Resource.all

        respond_to do |format|
            format.json  { render :json => @resources }
        end
    end
end
