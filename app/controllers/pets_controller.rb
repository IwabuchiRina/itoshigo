class PetsController < ApplicationController
  def index
    @pets = Pet.where(user_id: current_user.id)
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new()
    @pet_types = PetType.all
  end

  def create
    p = params.permit(
      :name,
      :pet_type_id,
      :gender,
      :birthday,
      :memo
    )
    p[:user_id] = current_user.id
    Pet.create(p)
    flash[:success] = 'ペットを登録しました！'
    redirect_to pets_path()
  end

  def edit
    @pet = Pet.find(params[:id])
    @pet_types = PetType.all
  end

  def update
    @pet = Pet.find(params[:id])
    p = params.permit(
      :name,
      :pet_type_id,
      :gender,
      :birthday,
      :memo
    )
    @pet.assign_attributes(p)
    @pet.save
    flash[:success] = 'ペットを情報を変更しました！'
    redirect_to pets_path()
  end
end