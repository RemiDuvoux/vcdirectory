class AddFieldsToStartup < ActiveRecord::Migration[5.0]
  def change
    add_column :startups, :twitter, :string
    add_column :startups, :facebook, :string
  end
end
