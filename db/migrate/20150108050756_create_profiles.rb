class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :student

      t.timestamps
    end
    add_index :profiles, :student_id
  end
end
