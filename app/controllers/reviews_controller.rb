class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find(params[:id])
    end

    def new 
        @review = Review.new
        @errors = flash[:errors]
    end

    def create
        review = Review.create(review_params)
        if review.valid?
            flash[:notice] = "Thank you for submitting your review!"
            redirect_to review
        else
            flash[:errors] = review.errors.full_messages
            redirect_to new_review_path
        end
    end

    def edit
        @review = Review.find(params[:id])
        @errors = flash[:errors]
    end

    def update
        review = Review.find(params[:id])
        if review.update(review_params)
            flash[:notice] = "Review was sucessfully updated!"
            redirect_to edit_review_path
        end
    end

    private

    def review_params
        params.require(:review).permit(:rating, :description, :stylist_id, :client_id)
    end
end
