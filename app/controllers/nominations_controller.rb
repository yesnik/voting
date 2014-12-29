class NominationsController < ApplicationController
  def index
    @nominations = Nomination.all
  end

  def show
    @nomination = Nomination.find(params[:id])
  end

  def new
    @nomination = Nomination.new
  end

  def create
    if @nomination.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private
  def nomination_params
    params.require(:nomination).permit(:title, :description)
  end
end
