class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.float :ind_40_prem
      t.float :ind_27_prem
      t.string :insurer_id
      t.string :county_id
      t.string :plan_number_id
      t.string :plan_name
      t.string :state_id
      t.string :plan_type_id
      t.string :year_id
      t.string :metal_level_id

      t.timestamps

    end
  end
end
