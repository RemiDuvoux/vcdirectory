class AddLogoToStartup < ActiveRecord::Migration[5.0]
  def change
    add_column :startups, :logo, :string
  end
end
