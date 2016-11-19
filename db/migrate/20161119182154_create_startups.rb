class CreateStartups < ActiveRecord::Migration[5.0]
  def change
    create_table :startups do |t|
      t.string :name
      t.string :alive
      t.string :description

      t.timestamps
    end
  end
end
