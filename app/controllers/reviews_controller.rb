class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def create
        review = Review.create!(review_params)
        render json :review
    end

    def edit
        review = Review.find(params[:id])
    end

    def update
        review = Review.find(params[:id])
        review.update(review_params)
        render json: review
        
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: {}
    end

    private

    def review_params
        params.permit(:user_id, :api_id, :rating, :comment, :movie_id)
    end
end
