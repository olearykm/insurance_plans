class CreateInsurers < ActiveRecord::Migration
  def change
    create_table :insurers do |t|
      t.string :insurer

      t.timestamps

    end
  end
end
