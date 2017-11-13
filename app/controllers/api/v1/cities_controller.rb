module Api::V1
  class CitiesController < ApplicationController

    def index
      @cities = City.all
      render json: @cities
    end

    def create
      @city = City.create(city_params)
      render json: @city
    end

    def update
      @city = City.find(params[:id])
      @city.update_attributes(city_params)
      render json: @city
    end

    def destroy
      City.destroy(params[:id])
    end

    private

      def city_params
        params.require(:city).permit(:id, :name, :total)
      end
  end
end
