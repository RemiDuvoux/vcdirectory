class AddCategoryToVcFirms < ActiveRecord::Migration[5.0]
  def change
    add_column :vc_firms, :category, :string
  end
end
