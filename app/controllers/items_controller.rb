class ItemsController < ApplicationController
  def toggle_claim
    @item = Item.find(params[:id])
    @item.update(claimed: !@item.claimed)

    redirect_to root_path, notice: "The gift has been claimed!"
  end
end
