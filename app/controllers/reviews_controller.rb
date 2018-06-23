class ReviewsController < ApplicationController
  def create
  @product = Product.find(params[:product_id])
  @review = @product.reviews.create(review_params)
  @users = current_user

  if @review.save
    redirect_to @product
  else
    redirect_to '/products/show'
  end
end

def review_params
  params.require(:review).permit(
    :rating,
    :description,
  )
end

end
