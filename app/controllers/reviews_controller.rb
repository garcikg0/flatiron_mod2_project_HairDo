class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find(params[:id])
    end

    def new 
        @review = Review.new
    end

    def create
        review = Review.create(review_params)
        redirect_to review
    end

    private

    def review_params
        params.require(:review).permit(:rating, :description, :stylist_id, :client_id)
    end
end
