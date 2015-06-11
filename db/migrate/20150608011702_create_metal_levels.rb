class CreateMetalLevels < ActiveRecord::Migration
  def change
    create_table :metal_levels do |t|
      t.string :metal_level

      t.timestamps

    end
  end
end
