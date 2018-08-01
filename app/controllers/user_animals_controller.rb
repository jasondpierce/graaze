class UserAnimalsController < ApplicationController
  
  def create 
    @user_animal = UserAnimal.create(user: current_user, animal: @animal.tag_number)
    flash[:success] = "Animal #{user_animal.name} was added"
    redirect_to animals_path
  end
  
end
