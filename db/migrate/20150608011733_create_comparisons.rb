class CreateComparisons < ActiveRecord::Migration
  def change
    create_table :comparisons do |t|
      t.string :user_id
      t.string :plan_id
      t.string :plan_type_id
      t.string :plan_number_id
      t.string :metal_level_id
      t.string :insurer_id
      t.string :state_id
      t.string :year_id
      t.string :county_id

      t.timestamps

    end
  end
end
