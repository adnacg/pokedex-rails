class MainController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end
end