class ActivitiesController < ApplicationController

  def index
    @activities = PublicActivity::Activity.all
    render json: ActivitySerializer.new(@activities)
  end

end
