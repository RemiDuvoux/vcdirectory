class VcFirmsController < ApplicationController
  def home
      @vc_firms = VcFirm.all
  end

  def index
    if params[:query].nil?
      @vc_firms = VcFirm.all
    elsif params[:query] == "seed_stage"
      @vc_firms = VcFirm.where.not(:seed_stage => nil)
    elsif params[:query] == "series_a"
      @vc_firms = VcFirm.where.not(:series_a => nil)
    elsif params[:query] == "series_b"
      @vc_firms = VcFirm.where.not(:series_b => nil)
    elsif params[:query] == "series_c"
      @vc_firms = VcFirm.where.not(:series_c => nil)
    elsif params[:query] == "growth_stage"
      @vc_firms = VcFirm.where.not(:growth_stage => nil)
    end
  end

  def show
    @vc_firm = VcFirm.find(params[:id])
  end
end
