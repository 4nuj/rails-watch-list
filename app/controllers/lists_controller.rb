class ListsController < ApplicationController
  # before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  # def new
  #   @list = list.new
  # end

  # def create
  #   @list = list.new(list_params)
  #   @list.save
  #   redirect_to lists_path
  # end

  # def edit
  #   # @list.comple
  # end

  # def update
  #   @list.update(list_params)
  #   redirect_to list_path(@list)
  # end

  # def destroy
  #   @list.destroy
  #   redirect_to lists_path
  # end

  # private

  # def list_params
  #   params.require(:list).permit(:title, :details, :completed)
  # end

  # def set_list
  #   @list = list.find(params[:id])
  # end
end
