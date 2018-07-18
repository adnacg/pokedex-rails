class MastersController < ApplicationController
  def index
    @masters = Master.all
  end

  def create
    @master = Master.new
    @master.name = params[:master][:name]
    @master.pokemon_id = params[:master][:pokemon_id]
    @master.save
    redirect_to @master
  end

  def new

    @pokemons = Pokemon.all
  end

  def edit
    @master = Master.find( Integer(params[:id]) )
    @pokemons = Pokemon.all
  end

  def show
    @master = Master.find( Integer(params[:id]) )
    @pokemon = Pokemon.find(@master.pokemon_id)
  end

  def update
    master = Master.find( Integer(params[:id]) )
    master.update(pokemon_id: params[:master][:pokemon_id], name: params[:master][:name])
    redirect_to master
  end

  def destroy
    master = Master.find( Integer(params[:id]) )
    master.destroy
    redirect_to '/'
  end
end