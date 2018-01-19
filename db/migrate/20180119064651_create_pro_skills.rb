class CreateProSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :pro_skills do |t|
      t.integer :professional_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
