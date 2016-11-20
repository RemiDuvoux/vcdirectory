class AddFieldsToFounder < ActiveRecord::Migration[5.0]
  def change
    add_column :founders, :twitter, :string
    add_column :founders, :facebook, :string
  end
end
