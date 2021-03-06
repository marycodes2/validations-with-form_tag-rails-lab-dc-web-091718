class AuthorsController < ApplicationController

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)
    if @author.errors.any?
      render :new
    else
      redirect_to author_path(@author)
    end
  end

  def show
    @author = Author.find(params[:id])
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
