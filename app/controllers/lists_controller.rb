class ListsController < ApplicationController
  def new
    @list = List.new
  end
  def create
    if List.create!(name: params[:list][:name], pin_code: params[:list][:pin_code].to_i, time_mode: params[:time_mode])
      redirect_to new_list_path, success: 'Profile was successfully created.'
    end
  end
  def list_params
    params.require(:list).permit(:id, :name, :pin_code, :time_mode)
  end
end
