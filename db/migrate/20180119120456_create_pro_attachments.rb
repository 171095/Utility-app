class CreateProAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :pro_attachments do |t|
      t.string :id_proof_one
      t.string :id_proof_two
      t.three :id_proof
      t.string :id_proof_four
      t.integer :professional_id

      t.timestamps
    end
  end
end
