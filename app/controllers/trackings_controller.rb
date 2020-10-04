class TrackingsController < ApplicationController
  def index
    @trackings = Tracking.all
  end

  def create
    @tracking = Tracking.new(tracking_params)
    @tracking.save
  end

  def tracking_params
    params.require(:tracking).permit(:uuid, :page)
  end
end
