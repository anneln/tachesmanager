class TachesController < ApplicationController
  before_action :set_tach, only:[:show, :edit, :update, :destroy]
  def index
    @taches = Tach.all
  end

  def show

  end

  def new
    @tach = Tach.new
  end

  def create
    @tach = Tach.new(tach_params)
    @tach.save
    redirect_to taches_path(@tach)
  end

  def edit
  end

  def update
    @tach.update(tach_params)
    redirect_to taches_path(@tach)
  end

  def destroy
    @tach.destroy
    redirect_to taches_path
  end

  def set_tach
    @tach = Tach.find(params[:id])
  end

  def tach_params
    params.require(:tach).permit(:name, :statut)
  end
end
