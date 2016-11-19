class CreateRounds < ActiveRecord::Migration[5.0]
  def change
    create_table :rounds do |t|
      t.date :date
      t.string :ammount
      t.references :vc_firm, foreign_key: true
      t.references :startup, foreign_key: true

      t.timestamps
    end
  end
end
