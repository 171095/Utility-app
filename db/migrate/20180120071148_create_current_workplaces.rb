class CreateCurrentWorkplaces < ActiveRecord::Migration[5.1]
  def change
    create_table :current_workplaces do |t|
      t.datetime :joined_on
      t.string :work_profile
      t.string :designation
      t.text :about_workplace
      t.integer :professional_id

      t.timestamps
    end
  end
end
