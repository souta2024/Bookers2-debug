class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @model = params[:model]
    @word = params[:word]
    @search = params[:search]

    if @model == "User"
      @users = User.search_for(@search, @word)
    else
      @books = Book.search_for(@search, @word)
    end
  end
end
