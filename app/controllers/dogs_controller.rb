class DogsController < ApplicationController
  def create
    dog = Dog.new(
      name: params[:name],
      breed: params[:breed],
      age: params[:age],
      user_id: current_user.id
    )
    dog.save
    
    render json: dog.as_json
  end

  def destroy
    dog = Dog.find_by(id: params[:id])
    if dog.user == current_user
      dog.destroy
      render json: {message: "who let this dog out?"}
    else
      render json: {permission: "denied"}
    end
  end
end