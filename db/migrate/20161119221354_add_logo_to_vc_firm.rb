class AddLogoToVcFirm < ActiveRecord::Migration[5.0]
  def change
    add_column :vc_firms, :logo, :string
  end
end
