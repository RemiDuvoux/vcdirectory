class StartupsController < ApplicationController
  def index
    @vc_firm = VcFirm.find(params[:vc_firm_id])
    @startups = @vc_firm.startups
  end

  def show
    @startup = Startup.find(params[:id])
  end
end
