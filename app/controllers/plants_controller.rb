class PlantsController < ApplicationController
    def index 
        plants = Plant.all
        render json: plants
    end

    def show 
        id = params[:id]
        plant = Plant.find_by(id: id)
        render json: plant, status: :ok
    end

    def create 
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private 
    def plant_params
        params.permit(:name, :image, :price)
    end
end
