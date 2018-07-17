class MainController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show_details
    @pokemon = Pokemon.find( Integer(params[:id]) )
  end
end