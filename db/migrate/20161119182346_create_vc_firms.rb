class CreateVcFirms < ActiveRecord::Migration[5.0]
  def change
    create_table :vc_firms do |t|
      t.date :creation_date
      t.string :vc_type
      t.string :city
      t.string :country
      t.string :office_address
      t.text :description
      t.string :funds_under_custody
      t.string :website
      t.string :sector
      t.string :name
      t.references :stage, foreign_key: true

      t.timestamps
    end
  end
end
