class ArtworkSharesController < ApplicationController
  # def index
  #   @artwork_shares = ArtworkShare.all
  #   render json: @artwork_shares
  # end

  def create
    @artwork_share = ArtworkShare.new(artwork_share_params)
    if @artwork_share.save
      render json: @artwork_share
    else
      render json: @artwork_share.errors.full_messages, status: :unprocessable_entity
    end
  end

  # def show
  #   @artwork_share = ArtworkShare.find_by(id: params[:id])
  #   if @artwork_share
  #     render json: @artwork_share
  #   else
  #     render json: {error: "No share with that ID"}, status: 418
  #   end
  # end

  # def update
  #   @artwork_share = ArtworkShare.find_by(id: params[:id])
  #   if @artwork_share
  #     @artwork_share.update(artwork_share_params)
  #     redirect_to artwork_share_url(@artwork_share)
  #   else
  #     render json: {error: "Share with ID given does not exist"}, status: 418
  #   end
  # end

  def destroy
    @artwork_share = ArtworkShare.find_by(id: params[:id])
    if @artwork_share
      @artwork_share.destroy
      render json: @artwork_share
    else
      render json: {error: "No share to delete there"}, status: 418
    end
  end

  private
  def artwork_share_params
    params.require(:artwork_share).permit(:artwork_id, :viewer_id)
  end
end
