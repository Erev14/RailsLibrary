# frozen_string_literal: true

# Author's Controller
class AuthorsController < ApplicationController
  def list
    @authors = Author.all
  end

  def search
    to_search = search_params
    @author = Author.where(name: to_search[:name])
                    .or(Author
                      .where(father_last_name: to_search[:father_last_name]))
                    .or(Author
                      .where(mother_last_name: to_search[:mother_last_name]))
  end

  def show
    @author = Author.includes(:books).find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to action: 'list'
    else
      render action: 'new'
    end
  end

  def author_params
    params.require(:author).permit(:name, :father_last_name, :mother_last_name,
                                   :nationality, :historical_review)
  end

  def search_params
    params.require(:author).permit(:name, :father_last_name, :mother_last_name)
  end
end
