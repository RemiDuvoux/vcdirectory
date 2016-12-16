class AddFieldsToVcFirms < ActiveRecord::Migration[5.0]
  def change
    add_column :vc_firms, :seed_stage, :string
    add_column :vc_firms, :series_a, :string
    add_column :vc_firms, :series_b, :string
    add_column :vc_firms, :series_c, :string
    add_column :vc_firms, :growth_stage, :string
  end
end
