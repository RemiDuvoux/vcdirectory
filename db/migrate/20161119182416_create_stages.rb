class CreateStages < ActiveRecord::Migration[5.0]
  def change
    create_table :stages do |t|
      t.string :seed_stage
      t.string :a_stage
      t.string :b_stage
      t.string :c_stage
      t.string :growth_stage

      t.timestamps
    end
  end
end
