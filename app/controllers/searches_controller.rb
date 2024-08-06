class SearchesController < ApplicationController
  def search
    @model = params[:model]
    @word = params[:word]

    if @model == "User"
      @users = User.all
    else
      @books = Book.all
    end
  end
end
