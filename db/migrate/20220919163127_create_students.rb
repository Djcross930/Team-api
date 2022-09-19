class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.text :short_bio
      t.string :linked_in
      t.string :twitter
      t.string :blog_or_website
      t.string :online_resume
      t.string :github
      t.string :photo
      t.integer :user_id

      t.timestamps
    end
  end
end
