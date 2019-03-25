# frozen_string_literal: true

# Book's Controller
class BookCasesController < ApplicationController
  def list
    @book_cases = BookCase.all
  end

  def show
    @book_case = BookCase.find(params[:id])
  end

  def new
    @book_case = BookCase.new
  end

  def create
    @book_case = BookCase.create(book_cases_params)
    if @book_case.save
      redirect_to action: 'list'
    else
      @book_case.errors.messages
      render action: 'new'
    end
  end

  def book_cases_params
    params.require(:book_case).permit(:level, :hall)
  end
end
