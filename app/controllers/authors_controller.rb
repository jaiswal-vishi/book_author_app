class AuthorsController < ApplicationController
    def show
        author = Author.find(params[:author_id])
        render json: { author: author, books: author.books }
    rescue ActiveRecord::RecordNotFound
        render json: { error: 'Author not found' }, status: :not_found
    end
end
