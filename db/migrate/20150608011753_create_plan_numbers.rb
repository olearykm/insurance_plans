class CreatePlanNumbers < ActiveRecord::Migration
  def change
    create_table :plan_numbers do |t|
      t.string :plan_number

      t.timestamps

    end
  end
end
