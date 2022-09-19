class DeleteAndRemakeStartDateFromEducation < ActiveRecord::Migration[7.0]
  def change
    remove_column :educations, :start_date, :time
    add_column :educations, :start_date, :date
  end
end
