class FlowersController < ApplicationController
  def index
    favorite_species
  end

  def show
    @flower = favorite_species.select do |hash|
      hash[:id] == params[:id].to_i
    end
  end

  private

  def favorite_species
    @favorite_species = [
      {
        id: 1,
        name: 'Castilleja miniata',
      },
      {
        id: 2,
        name: 'Aquilegia formosa',
      },
      {
        id: 3,
        name: 'Centaurea cyanus',
      },
      {
        id: 4,
        name: 'Lupinus argenteus',
      },
      {
        id: 5,
        name: 'Chrysanthemum leucanthemum',
      },
      {
        id: 6,
        name: 'Nymphaea odorata',
      },
      {
        id: 7,
        name: 'Trillium petiolatum',
      },
    ]
  end

end
