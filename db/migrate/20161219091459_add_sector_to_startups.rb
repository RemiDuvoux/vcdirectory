class AddSectorToStartups < ActiveRecord::Migration[5.0]
  def change
    add_column :startups, :sector, :string
  end
end
