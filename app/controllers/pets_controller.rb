class PetsController < ApplicationController
  def index

  end
  def new
    @pet = Pet.new()
    @pet_type = PetType.all
  end
end
