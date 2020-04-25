class ListsController < ApplicationController
  def new
    @list = List.new
  end
  def create
    if List.create!(name: params[:list][:name], pin_code: params[:list][:pin_code].to_i, member_id: params[:list][:member_id], meridies: params[:meridies])
      redirect_to root_path, success: 'Profile was successfully created.'
    end
  end
  def list_params
    params.require(:list).permit(:id, :name, :pin_code, :time_mode)
  end
end
