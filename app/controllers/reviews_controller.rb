class ReviewsController < ApplicationController
  before_action :set_cocktail, except: [:destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @cocktail = Cocktail.find(params[:cocktail_id])

    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail), notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to cocktail_path(@review.cocktail), notice: 'Review was successfully destroyed.'
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
