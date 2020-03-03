class PokemonsController < ApplicationController
  def create
    name = Faker::Name.first_name
    species = Faker::Games::Pokemon.name
    trainer_id = params[:_json]
    pokemon = Pokemon.create(nickname: name, species: species, trainer_id: trainer_id)
    render json: pokemon
  end

  def destroy
    pokemon = Pokemon.find_by_id(params[:id])
    pokemon.destroy
    render json: pokemon
  end
end
