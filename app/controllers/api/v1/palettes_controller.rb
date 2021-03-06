class Api::V1::PalettesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Palette.all.reverse
  end

  def show
    render json: Palette.find(params[:id])
  end

  def create
   palette = Palette.new(palette_params)
   # this will automatically assign the palette to your first user if there is no current user
   # if the first user gets deleted, it could break your palette show page
   if current_user
     palette.user = current_user
   else
     palette.user_id = 1
   end

   if palette.save
     render json: Palette.all
   else
     render json: {message: "Did not save."}
   end
  end

 private

 def palette_params
    params.require(:palette).permit(:title, :hexcodes => [])
 end
end
