class TrackController < ApplicationController

  def search
    @track_id = params[:order_track_id]
    @tracks = @track_id ? Order.where(order_track_id: @track_id) : []
    render "index"
  end


end
