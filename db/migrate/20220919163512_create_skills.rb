class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.string :skill
      t.integer :student_id

      t.timestamps
    end
  end
end
