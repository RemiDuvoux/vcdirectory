class AddPhotoToFounder < ActiveRecord::Migration[5.0]
  def change
    add_column :founders, :photo, :string
  end
end
