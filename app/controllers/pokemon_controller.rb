class PokemonController < ApplicationController
  def show_details
    @pokemon = Pokemon.find( Integer(params[:id]) )
  end

  def create_form
  end

  def create
    Pokemon.create(name: params[:pokemon][:name], img: params[:pokemon][:img], height: params[:pokemon][:height], weight: params[:pokemon][:weight], candy: params[:pokemon][:candy], candy_count: params[:pokemon][:candy_count], egg: params[:pokemon][:egg], avg_spawns: params[:pokemon][:avg_spawns], spawn_time: params[:pokemon][:spawn_time])
    new_pokemon = Pokemon.find_by( name: params[:pokemon][:name] )
    new_pokemon.update_attribute(:num, new_pokemon.id.to_s)
    redirect_to action: "show_details", id: new_pokemon.id
  end

  def update_form
    @pokemon = Pokemon.find(Integer(params[:id]))
  end

  def update
    pokemon = Pokemon.find(Integer(params[:id]))
    pokemon.update(name: params[:pokemon][:name], img: params[:pokemon][:img], height: params[:pokemon][:height], weight: params[:pokemon][:weight], candy: params[:pokemon][:candy], candy_count: params[:pokemon][:candy_count], egg: params[:pokemon][:egg], avg_spawns: params[:pokemon][:avg_spawns], spawn_time: params[:pokemon][:spawn_time])
    redirect_to action: "show_details", id: params[:id]
  end

  def delete
    pokemon = Pokemon.find(Integer(params[:id]))
    pokemon.destroy
    redirect_to "/"
  end
end