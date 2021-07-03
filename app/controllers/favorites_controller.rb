class FavoritesController < ApplicationController

  def create
    @favorite = Favorite.new(user_id: @current_user.id, book_id: params[:book_id])
    @favorite.save
    redirect_to books_path(@book)
  end

  def destroy
    @favorite = Favorite.find_by(user_id: @current_user.id, title_id: params[:book_id])
    @favorite.destroy
    redirect_to books_path(@book)
  end

end
