class StagesController < ApplicationController
  before_action :set_stage, only: [:show, :update, :destroy, :edit]


  def bew
    @stage = Stade.new
  end

  def create
    @stage = Stage.create(stage_params)
     redirect_to stage_path(@stage)
  end

  def update
    @stage.update(stage_params)
    rediredct_to stage_path(@stage)
  end

  def edit

  end

  def show
  end

  def index
    @stages = Stage.all
  end

  private

  def stage_params
    params.require(:stage).permit(:titre, :date1, :date2, :date3, :ville)
  end

  def set_stage
    @stage = Stage.find(params[:id])
  end

end