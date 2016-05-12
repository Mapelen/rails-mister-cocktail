class DosesController < ApplicationController
  before_action :find_cocktail, only: [ :new, :create ]


  def new
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def create
    @dose = @cocktail.doses.build(dose_params)
    ingredient = Ingredient.find(params[:dose][:ingredient].to_i)
    @dose.ingredient = ingredient
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Cocktail.find(params[:dose])
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

end
