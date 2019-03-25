# frozen_string_literal: true

# Book's Controller
class BooksController < ApplicationController
  def list
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to action: 'list'
    else
      @subjects = Subject.all
      render action: 'new'
    end
  end
end
