class AddFieldsToVcFirm < ActiveRecord::Migration[5.0]
  def change
    add_column :vc_firms, :twitter, :string
    add_column :vc_firms, :facebook, :string
  end
end
