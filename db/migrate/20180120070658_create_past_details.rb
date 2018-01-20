class CreatePastDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :past_details do |t|
      t.datetime :joined_on
      t.datetime :left_on
      t.string :work_profile
      t.text :about_workplace
      t.string :designation
      t.integer :professional_id

      t.timestamps
    end
  end
end
