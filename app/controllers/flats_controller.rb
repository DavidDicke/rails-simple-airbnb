require 'open-uri'
class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.search(params[:query])
  end

  def show
    # mapdata = URI.open("https://api.mapbox.com/search/geocode/v6/forward?q=#{@flat.address}&access_token=pk.eyJ1IjoiZGFtZCIsImEiOiJjamh6OTVmdHQwdXIyM3FvM3YxbG95c3RsIn0.SPUR5DZo1El__qHvHFwQLg").read
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @flat.update(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:address, :name, :description, :price_per_night, :number_of_guests, :img_url)
  end
end
