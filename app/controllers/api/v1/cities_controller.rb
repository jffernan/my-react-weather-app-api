module Api::V1
  class CitiesController < ApplicationController

    def index
      @cities = City.order(:name)
      render json: @cities
    end

    def create
      @city = City.create(city_params)
      render json: @city
    end

    private

      def city_params
        params.require(:city).permit(:name)
      end
  end
end
