class CreatePlanTypes < ActiveRecord::Migration
  def change
    create_table :plan_types do |t|
      t.string :plan_type

      t.timestamps

    end
  end
end
