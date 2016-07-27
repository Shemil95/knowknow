class KnowsController < ApplicationController
  before_action :find_know, only: [:show, :edit, :destroy, :update]
  def index
    @knows = Know.all
  end

  def new
    @know = Know.new
  end

  def create
    @know = Know.new(know_params)
      if @know.save
      redirect_to @know
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  def update
    @know.update(know_params)
    if @know.save
      redirect_to @know
    else
      render 'new'
    end
  end

  def destroy
    @know.destroy
    redirect_to knows_path
  end

  private

  def know_params
    params.require(:know).permit(:title, :body)
  end

  def find_know
    @know = Know.find(params[:id])
  end
end
