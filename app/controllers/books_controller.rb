# frozen_string_literal: true

# Book's Controller
class BooksController < ApplicationController
  def list
    @books = Book.all
  end

  def show
    @book = Book.includes(:author, :book_case).find(params[:id])
  end

  def new
    @book = Book.new
    @authors = Author.all
    @book_cases = BookCase.all
  end

  def create
    @book = Book.new(books_params)
    if @book.save
      redirect_to action: 'list'
    else
      @author = Author.all
      @book_cases = BookCases.all
      render action: 'new'
    end
  end

  def books_params
    params.require(:book).permit(:title, :editorial, :edition_year,
                                   :edition_number, :ISBN, :author_id, :book_case_id)
  end
end
