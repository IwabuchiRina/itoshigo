class PetsController < ApplicationController
  def index

  end
  def new
    @pet = Pet.new()
    @pet_types = PetType.all
  end
end
