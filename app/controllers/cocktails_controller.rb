class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    console
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to @cocktail
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
