class VcFirmsController < ApplicationController
  def home
  end

  def index
    @vc_firms = VcFirm.all
  end

  def show
    @vc_firm = VcFirm.find(params[:id])
  end
end
