class Api::V1::TrackingsController < Api::V1::BaseController
  before_action :set_tracking, only: [ :destroy ]

  def index
    @trackings = Tracking.all
  end

  def create
    @trackings = Tracking.new(tracking_params)
    if @trackings.save
    else
      render_error
    end
  end

  def destroy
    @contact.destroy
    head :no_content
  end
  
  private

  def tracking_params
    params.require(:tracking).permit(:uuid, :page)
  end

end
